using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Volunesia.Models;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Volunesia.Services;
using FireSharp.Response;
using Volunesia.Droid.Service;
using FireSharp.Interfaces;
using Newtonsoft.Json;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "EventRatingActivity")]
    public class EventRatingActivity : Activity
    {
        public VolunteerEvent SelectedEvent{ get; set; }
        public Switch HelpfulSwitch { get; set; }
        public Switch PositiveSwitch { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SelectedEvent = JsonConvert.DeserializeObject<VolunteerEvent>(Intent.GetStringExtra("pastEvent"));

            SetContentView(Resource.Layout.EventRating);

            DateTime currentTime = DateTime.Now;
            TimeSpan timeDifference = currentTime - SelectedEvent.EventDate;

            if (timeDifference.Hours > SelectedEvent.HoursCompleted)
            {
                //Query a volunteer rating to make sure if a volunteer hasn't rated this event previously
                var checkIfVolunteerHasRated = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await QueryVolunteerRatingForEventStatus();


                });
                if (!checkIfVolunteerHasRated.Equals("null"))
                {
                    HelpfulSwitch = FindViewById<Switch>(Resource.Id.helpfulSwitch);
                    PositiveSwitch = FindViewById<Switch>(Resource.Id.positiveSwitch);


                    HelpfulSwitch.Checked = false;
                    PositiveSwitch.Checked = false;

                    HelpfulSwitch.CheckedChange += ChangeHelpfulSwitchStatus;
                    PositiveSwitch.CheckedChange += ChangePositiveSwitchStatus;
                    
                    var castRatingButton = FindViewById<Button>(Resource.Id.castRatingButton);
                    castRatingButton.Click += CollectVolunteerRatingForEvent;
                }
                //otherwise, notify the volunteer that their rating already has been casted for the event
                else
                {
                    AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                    dialogAlertConstruction.SetTitle("Rating Error");
                    dialogAlertConstruction.SetMessage("Unable to rate event, as you already have cast your rating!");

                    dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                    {

                        dialogAlertConstruction.Dispose();
                        StartActivity(typeof(VolunteerEventsActivity));

                    });
                    dialogAlertConstruction.Show();
                }
            }
            
        }

        /// <summary>
        /// Changes the switch status of the Helpful switch
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ChangeHelpfulSwitchStatus(object sender, EventArgs e)
        {
            if(HelpfulSwitch.Checked == true)
            {
                HelpfulSwitch.Checked = false;
            }
            else
            {
                HelpfulSwitch.Checked = true;
            }
        }

        /// <summary>
        /// Changes the switch status of the Positive switch
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ChangePositiveSwitchStatus(object sender, EventArgs e)
        {
            if(PositiveSwitch.Checked)
            {
                PositiveSwitch.Checked = false;
            }
            else
            {
                PositiveSwitch.Checked = true;
            }
        }

        /// <summary>
        /// Proceeds to collects volunteer ratings if any of the switches were clicked 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void CollectVolunteerRatingForEvent(object sender, EventArgs e)
        {
            List<string> ratingCategories = new List<string>();

            if(PositiveSwitch.Checked)
            {
                ratingCategories.Add("helpful");
            }
            if(HelpfulSwitch.Checked)
            {
                ratingCategories.Add("positive");
            }
            if(ratingCategories.Count != 0)
            {
                Dictionary<string, string> ratingCategoriesSelected = new Dictionary<string, string>();
                ratingCategoriesSelected.Add("helpful", "No");
                ratingCategoriesSelected.Add("positive", "No");
                foreach(var ratingCategory in ratingCategories)
                {
                    ratingCategoriesSelected.Add(ratingCategory, "Yes");


                }
                var castVolunteerRating = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await CastVolunteerRatingForEvent(ratingCategoriesSelected);
                    
                });

                StartActivity(typeof(VolunteerEventsActivity));
            }
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Rating error");
                dialogAlertConstruction.SetMessage("No rating categories have been selected");

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }


        }


        /// <summary> 
        /// Checks if a volunteer has previously rated this event by querying Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> QueryVolunteerRatingForEventStatus()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            
            FirebaseResponse volunteerRatingForEventResponse = await firebaseClient.GetAsync("ratings/" + SelectedEvent.EventID + "/" + AppData.CurUser.UID);
            return volunteerRatingForEventResponse.Body;
        }

        /// <summary>
        /// Casts the volunteer's rating of the event by posting it to Firebase
        /// </summary>
        /// <param name="ratingCategoriesSelected"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> CastVolunteerRatingForEvent(Dictionary<string, string> ratingCategoriesSelected)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse postVolunteerRatingResponse = await firebaseClient.SetAsync("ratings/" + SelectedEvent.EventID + "/" + AppData.CurUser.UID, ratingCategoriesSelected);

            return postVolunteerRatingResponse.Body;
        }

    }
}