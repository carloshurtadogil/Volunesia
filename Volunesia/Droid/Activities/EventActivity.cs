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
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "EventApplicationActivity")]
    public class EventActivity : Activity
    {
        public Event SelectedEvent { get; set; } 
        public Button ApplyOrDeleteButton { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            //Made this as a temporary event to test adding volunteers
            SelectedEvent = new Event()
            {
                HostID = "fac19049-f4af-4bd4-868a-248f333cfe23",
                EventID = "28eee336-8437-442f-a458-d7fbaaae9c5e",
            };
            //Retrieve roster and waitlist from Firebase
            var eventTask = System.Threading.Tasks.Task.Run(async () => {

                return await GetRosterAndWaitlist();

            });
            var eventResult = eventTask.Result;

            //Parse the JSON response to get the roster and waitlist content
            var eventInfoAsJson = JObject.Parse(eventResult);
            var roster = eventInfoAsJson["roster"];
            var waitlist = eventInfoAsJson["waitlist"];

            SetContentView(Resource.Layout.Event);
            var eventNameField = FindViewById<TextView>(Resource.Id.eventNameTextView);
            eventNameField.Text = SelectedEvent.EventName;

            var eventDescriptionField = FindViewById<TextView>(Resource.Id.eventDescriptionTextView);
            eventDescriptionField.Text = SelectedEvent.EventDescription;

            ApplyOrDeleteButton = FindViewById<Button>(Resource.Id.applyOrDeleteButton);

            if (AppData.CurUser.UserType.Equals("NP") && AppData.NonprofitRepresentative.AssociatedNonprofit.Equals(SelectedEvent.HostID))
            {
                ApplyOrDeleteButton.Text = "Delete Event";
                ApplyOrDeleteButton.Visibility = ViewStates.Visible;
            }
            else if (AppData.CurUser.UserType.Equals("V"))
            {
                ApplyOrDeleteButton.Text = "Apply";
                ApplyOrDeleteButton.Visibility = ViewStates.Visible;
            }
            else
            {
                ApplyOrDeleteButton.Visibility = ViewStates.Invisible;
            }

            ApplyOrDeleteButton.Click += ApplyOrDeleteButtonClicked;

            // Create your application here
        }

        //Decides which action should be taken based on the button name
        public void ApplyOrDeleteButtonClicked(object sender,EventArgs e)
        {
            if (ApplyOrDeleteButton.Text.Equals("Delete Event"))
            {
                this.DeleteEvent();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Apply"))
            {
                this.ApplyToEvent();
            }
            
        }

        //Proceeds to execute upon user clicks on the Apply button
        public void ApplyToEvent()
        {
            AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
            dialogAlertConstruction.SetTitle("Ready to Volunteer?");
            dialogAlertConstruction.SetMessage("Are you ready to make a difference");

            //If yes option is clicked, then add volunteer to event roster
            dialogAlertConstruction.SetPositiveButton("Yes", delegate
            {
                var queryvolhistorytask = System.Threading.Tasks.Task.Run(async () =>
                {

                    return await AddVolunteerToEventRoster();

                });
            });
            //if no option is selected, then exit the AlertDialog
            dialogAlertConstruction.SetNegativeButton("No", delegate
            {
                dialogAlertConstruction.Dispose();

            });
            dialogAlertConstruction.Show();
        }

        //To be implemented later
        public void DeleteEvent()
        {

        }

        //Proceeds to add a volunteer to the event's roster
        public async System.Threading.Tasks.Task<string> AddVolunteerToEventRoster()
        {

            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            Dictionary<string, object> attendeeInformation = new Dictionary<string, object>();

            attendeeInformation.Add("attended", "N" );
            attendeeInformation.Add("hoursCompleted", 0);
            attendeeInformation.Add("status", "Will Attend");

            //Retrieve the user 
            PushResponse response = await firebaseClient.PushAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster/" + AppData.CurUser.UID + "/", attendeeInformation);
            string resultant = response.Body;

            return resultant;
        }

        //Removes a volunteer from the event roster and proceeds to add the first volunteer 
        //on the waitlist to the event roster
        public async System.Threading.Tasks.Task RemoveVolunteerFromRoster()
        {
            //Deletes the volunteer from the event roster
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse deleteResponse = await firebaseClient.DeleteAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster/" + AppData.CurUser.UID);


            FirebaseResponse waitlistResponse = await firebaseClient.GetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID);
            string waitlistContent = waitlistResponse.Body;
            JObject waitlistContentInJson = JObject.Parse(waitlistContent);

            //Retrieve the waitlist counter to ensure there is at least one person on the waitlist
            var waitlistCounterContent = waitlistContentInJson["wlcounter"];
            int waitlistCounter = waitlistCounterContent.ToObject<int>();
            if (waitlistCounter != 0)
            {

                var waitlistRoster = (JObject)waitlistContentInJson["waitlist"];
                string foundUID = "";
                int foundPosition = 0;
                //Traverse the waitlist roster till the first person in waitlist is reached
                foreach (var waitlistPerson in waitlistRoster)
                {
                    Console.WriteLine(waitlistPerson.Key + ""   + waitlistPerson.Value.ToString());
                    foundPosition = Convert.ToInt32(waitlistPerson.Key);
                    foundUID = waitlistPerson.Value.ToString();
                }

                Dictionary<string, object> attendeeInformation = new Dictionary<string, object>();
                attendeeInformation.Add("attended", "N");
                attendeeInformation.Add("hoursCompleted", 0);
                attendeeInformation.Add("status", "Will Attended");

                //Push the first volunteer on the waitlist to the event roster
                PushResponse pushResponse = await firebaseClient.PushAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster/" + foundUID + "/", attendeeInformation);

                //Delete the first volunteer from the waitlist
                FirebaseResponse deleteVolunteerFromWaitlistResponse = await firebaseClient.DeleteAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/waitlist/" + foundPosition);
                //Update the waitlist counter for the event
                waitlistCounter--;
                FirebaseResponse updateWaitlistCounter = await firebaseClient.UpdateAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/wlcounter", waitlistCounter);

            }
        }

        //Proceeds to retrieve the roster and waitlist
        public async System.Threading.Tasks.Task<string> GetRosterAndWaitlist()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse eventResponse = await firebaseClient.GetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID);
            string eventResult = eventResponse.Body;

            return eventResult;

            
        }



    }
}