using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "EventXPAssignmentActivity")]
    public class EventXPAssignmentActivity : Activity
    {
        public Event SelectedEvent { get; set; }
        public List<Attendee> EventAttendees { get; set; }

        private List<string> mItems;
        private ListView mListView;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.EventXPAssignment);
            mItems = new List<string>();

            var eventTask = System.Threading.Tasks.Task.Run(async () =>
            {

                return await GetEventAsync();

            });
            var eventResult = eventTask.Result;

            //Parse the JSON response to get the roster and waitlist content
            var eventInfoAsJson = JObject.Parse(eventResult);

            var eventRoster = (JObject)eventInfoAsJson["roster"];

            foreach (var attendee in eventRoster)
            {
                Attendee currentAttendee = new Attendee()
                {
                    UID = attendee.Key,
                    EmailAddress = attendee.Value["contact"].ToString(),
                    HoursCompleted = Convert.ToInt32(DateTime.Now - Convert.ToDateTime(attendee.Value["checkintime"].ToString())),
                    Attended = true
                };

                if (currentAttendee.Attended)
                {
                    EventAttendees.Add(currentAttendee);
                    mItems.Add(currentAttendee.EmailAddress + " " + currentAttendee.UID);
                }
            }

            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

            var generateXPForAttendeesButton = FindViewById<Button>(Resource.Id.generateXPForAttendeesButton);
            generateXPForAttendeesButton.Click += GenerateXPForAttendees;
        }

        /// <summary>
        /// Generates experience points for all volunteers who attended the event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GenerateXPForAttendees(object sender, EventArgs e)
        {
            int level = 0;
            foreach (var attendee in EventAttendees)
            {
                //Query the volunteer's current level
                var volunteerLevelTask = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await GetVolunteerLevel();
                });
                //Query the volunteer's current badges
                var volunteerBadgesTask = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await GetVolunteerBadgesAsync();
                });

                //Occupy the level and badges from the queried results
                level = Convert.ToInt32((volunteerLevelTask.Result).Substring(1, volunteerLevelTask.Result.Length - 2));
                List<BadgeCategory.Badge> badges = OccupyVolunteerBadges(volunteerBadgesTask.Result);

                Volunteer theVolunteer = new Volunteer()
                {
                    Level = level,
                    BadgeList = new List<BadgeCategory.Badge>(),
                    UID = attendee.UID
                    
                };
                
                //perform level up functionality to make sure a volunteer has leveled up or not
                LevelUp levelUpFunc = new LevelUp();
                bool didLevelUp = levelUpFunc.CheckIfUserCanLevelUp(theVolunteer);

                //if a volunteer has leveled up, then update their level in Firebase
                if(didLevelUp == true)
                {
                    var volunteerLevelUpTask = System.Threading.Tasks.Task.Run(async () =>
                    {
                        return await UpdateVolunteerLevelAsync(theVolunteer);
                    });
                }

                var volunteerHistoryTask = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await UpdateVolunteerHistoryAsync(attendee.UID, attendee.HoursCompleted);
                });
            }

        }

        /// <summary>
        /// Updates a volunteer's level in Firebase
        /// </summary>
        /// <param name="volunteer"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> UpdateVolunteerLevelAsync(Volunteer volunteer)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse volunteerLevel = await firebaseClient.UpdateAsync("users/" + volunteer.UID + "/level", volunteer.Level );
            return volunteerLevel.Body;
        }

        /// <summary>
        /// Updates a volunteer's amount of volunteer work in Firebase
        /// </summary>
        /// <param name="attendeeUID"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> UpdateVolunteerHistoryAsync(string attendeeUID, int hours)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse volunteerHistoryResponse = await firebaseClient.UpdateAsync("volunteerhistory/" + attendeeUID + "/" + SelectedEvent.EventID + "/hours", hours  );
            return volunteerHistoryResponse.Body;
        }

        /// <summary>
        /// Retrieves the volunteer's level from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteerLevel()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse volunteerLevel = await firebaseClient.GetAsync("users/" + AppData.CurUser.UID + "/level");
            return volunteerLevel.Body;
        }

        /// <summary>
        /// Retrieves a volunteer's list of badges from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteerBadgesAsync()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse volunteerBadgeResponse = await firebaseClient.GetAsync("badges/" + AppData.CurUser.UID);

            return volunteerBadgeResponse.Body;


        }

        /// <summary>
        /// Retrieves the roster of an event from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetEventAsync()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse volunteerBadgeResponse = await firebaseClient.GetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID);

            return volunteerBadgeResponse.Body;
        }

        /// <summary>
        /// Occupies a volunteer's badges by filling them into a volunteer's BadgeList
        /// </summary>
        public List<BadgeCategory.Badge> OccupyVolunteerBadges(String currentBadge)
        {
            List<BadgeCategory.Badge> badges = new List<BadgeCategory.Badge>();

            switch (currentBadge)
            {
                case "Grandmaster":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    badges.Add(BadgeCategory.Badge.Advanced);
                    badges.Add(BadgeCategory.Badge.Expert);
                    badges.Add(BadgeCategory.Badge.Grandmaster);
                    break;
                case "Expert":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    badges.Add(BadgeCategory.Badge.Advanced);
                    badges.Add(BadgeCategory.Badge.Expert);
                    break;
                case "Advanced":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    badges.Add(BadgeCategory.Badge.Advanced);
                    break;
                case "Intermediate":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    break;
                case "Novice":
                    badges.Add(BadgeCategory.Badge.Novice);
                    break;
            }
            return badges;

        }

        }
}

