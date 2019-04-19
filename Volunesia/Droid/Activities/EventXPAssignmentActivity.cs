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
            EventAttendees = new List<Attendee>();
            //e.g. for a sample event
            SelectedEvent = new Event()
            {
                EventDate = DateTime.Parse("3/25/2019 8:00:00 AM"),
                EventID = "5bee046e-c219-4456-b043-7a1c92186f3d",
                EventName = "Coding 4 Vols",
                HostID = "43513eed-c8c2-4e91-a9b3-303b29a9067d",
                

            };
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
                    HoursCompleted = Convert.ToInt32(attendee.Value["hourscompleted"]),
                    Attended = true
                };

                if (currentAttendee.Attended)
                {
                    EventAttendees.Add(currentAttendee);
                    mItems.Add(currentAttendee.EmailAddress + " " + currentAttendee.UID + " " + currentAttendee.HoursCompleted);
                }
            }

            mListView = FindViewById<ListView>(Resource.Id.attendeesWaitingForXPListView);

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
                    return await GetVolunteer(attendee.UID);
                });
                //Query the volunteer's current badges
                var volunteerBadgesTask = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await GetVolunteerBadgesAsync(attendee.UID);
                });

                string resultant = volunteerLevelTask.Result;
                JObject volunteerOrAttendee = JObject.Parse(resultant);

                Dictionary<string, object> volInformation = new Dictionary<string, object>();
                volInformation.Add("email", volunteerOrAttendee["email"].ToString());
                volInformation.Add("first", volunteerOrAttendee["first"].ToString());
                volInformation.Add("last", volunteerOrAttendee["last"].ToString());
                volInformation.Add("level", Convert.ToInt32(volunteerOrAttendee["level"]));
                volInformation.Add("personalstatement", volunteerOrAttendee["personalstatement"].ToString());
                volInformation.Add("type", volunteerOrAttendee["type"].ToString());
                volInformation.Add("xp", Convert.ToDouble(volunteerOrAttendee["xp"]));
                int volLevel = Convert.ToInt32(volunteerOrAttendee["level"]);
                double volXP = Convert.ToDouble(volunteerOrAttendee["xp"]);
                
                
                //Occupy the level and badges from the queried results
                level = volLevel;
                    
                //Convert.ToInt32((volunteerLevelTask.Result).Substring(1, volunteerLevelTask.Result.Length - 2));
                List<BadgeCategory.Badge> badges = OccupyVolunteerBadges(volunteerBadgesTask.Result);

                Volunteer theVolunteer = new Volunteer()
                {
                    Level = level,
                    BadgeList = new List<BadgeCategory.Badge>(),
                    UID = attendee.UID,
                    Experience = volXP
                    
                };
                
                //perform level up functionality to make sure a volunteer has leveled up or not
                LevelUp levelUpFunc = new LevelUp();
                bool didLevelUp = levelUpFunc.CheckIfUserCanLevelUp(theVolunteer, attendee.HoursCompleted);

                volInformation["xp"] = theVolunteer.Experience;

                //if a volunteer has leveled up, then update their level in Firebase
                if(didLevelUp == true)
                {
                    volInformation["level"] = theVolunteer.Level;

                    var volunteerLevelUpTask = System.Threading.Tasks.Task.Run(async () =>
                    {
                        return await UpdateVolunteerLevelAsync(theVolunteer, volInformation);
                    });
                }

                Dictionary<string, object> volHistoryInfo = new Dictionary<string, object>();
                volHistoryInfo.Add("attended", "Y");
                volHistoryInfo.Add("eventdate", SelectedEvent.EventDate.ToString());
                volHistoryInfo.Add("eventname", SelectedEvent.EventName);
                volHistoryInfo.Add("hoursvolunteered", attendee.HoursCompleted);
                volHistoryInfo.Add("nonprofitid", SelectedEvent.HostID);
                volHistoryInfo.Add("nonprofitname", SelectedEvent.EventName);

                var volunteerHistoryTask = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await UpdateVolunteerHistoryAsync(attendee.UID, volHistoryInfo);
                });
            }

        }

        /// <summary>
        /// Updates a volunteer's level in Firebase
        /// </summary>
        /// <param name="volunteer"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> UpdateVolunteerLevelAsync(Volunteer volunteer, Dictionary<string, object> volInfo)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse updateVolunteerAfterLevelUp = await firebaseClient.SetAsync("users/" + volunteer.UID, volInfo);
            return updateVolunteerAfterLevelUp.Body;
        }

        /// <summary>
        /// Updates a volunteer's amount of volunteer work in Firebase
        /// </summary>
        /// <param name="attendeeUID"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> UpdateVolunteerHistoryAsync(string attendeeUID, Dictionary<string, object> volunteerHistoryInformation)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse updateVolHistoryResponse = await firebaseClient.SetAsync("volunteerhistory/" + attendeeUID + "/" + SelectedEvent.EventID, volunteerHistoryInformation);
            return updateVolHistoryResponse.Body;
        }

        /// <summary>
        /// Retrieves the volunteer's level from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteer(string attendeeUID)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse volunteerLevel = await firebaseClient.GetAsync("users/" + attendeeUID);
            return volunteerLevel.Body;
        }

        /// <summary>
        /// Retrieves a volunteer's list of badges from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteerBadgesAsync(string attendeeUID)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse volunteerBadgeResponse = await firebaseClient.GetAsync("badges/" + attendeeUID);

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

