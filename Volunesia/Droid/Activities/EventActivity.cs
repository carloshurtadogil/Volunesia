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
        public int FoundPosition { get; set; } //gets the volunteer's position in waitlist if placed in waitlist
        public String WLID { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            //Made this as a temporary event to test adding volunteers
            SelectedEvent = new Event()
            {
                HostID = "fac19049-f4af-4bd4-868a-248f333cfe23",
                EventID = "28eee336-8437-442f-a458-d7fbaaae9c5e",
            };
            WLID = "0" ;
            //Retrieve roster and waitlist from Firebase
            var eventTask = System.Threading.Tasks.Task.Run(async () => {

                return await GetRosterAndWaitlist();

            });
            var eventResult = eventTask.Result;

            //Parse the JSON response to get the roster and waitlist content
            var eventInfoAsJson = JObject.Parse(eventResult);
            var roster = (JObject)eventInfoAsJson["roster"];
            
            var waitlist = (JObject)eventInfoAsJson["waitlist"];
            
            var waitlistID = eventInfoAsJson["wlid"];

            SetContentView(Resource.Layout.Event);
            var eventNameField = FindViewById<TextView>(Resource.Id.eventNameTextView);
            eventNameField.Text = SelectedEvent.EventName;

            var eventDescriptionField = FindViewById<TextView>(Resource.Id.eventDescriptionTextView);
            eventDescriptionField.Text = SelectedEvent.EventDescription;

            ApplyOrDeleteButton = FindViewById<Button>(Resource.Id.applyOrDeleteButton);

            //Checks if the user type is a nonprofit to allow deletion of an event
            if (AppData.CurUser.UserType.Equals("NP") && AppData.NonprofitRepresentative.AssociatedNonprofit.Equals(SelectedEvent.HostID))
            {
                ApplyOrDeleteButton.Text = "Delete Event";
                ApplyOrDeleteButton.Visibility = ViewStates.Visible;
            }
            //checks if the user type is a volunteer
            else if (AppData.CurUser.UserType.Equals("V"))
            {
                //Checks if the volunteer is in the event roster, if yes show "DROP FROM EVENT"
                bool volunteerInRoster = CheckIfVolunteerIsInRoster(roster);
                if (volunteerInRoster == true)
                {
                    ApplyOrDeleteButton.Text = "Drop from Event";
                    ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                }
                else
                {
                    //checks if the volunteer is present in the waitlist 
                    bool volunteerInWaitlist = CheckIfVolunteerIsInWaitlist(waitlist);
                    if (volunteerInWaitlist == true)
                    {
                        ApplyOrDeleteButton.Text = "Drop from Waitlist";
                        ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                    }
                    //check if the roster is not full, then show "APPLY TO EVENT" 
                    else if (SelectedEvent.Capacity != roster.Count)
                    {
                        ApplyOrDeleteButton.Text = "Apply to Event";
                        ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                    }
                    //else if the event is full, then show WAITLIST FOR EVENT
                    else if (SelectedEvent.Capacity == roster.Count)
                    {
                        ApplyOrDeleteButton.Text = "Waitlist for Event";
                        ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                    }

                }
            }
            else
            {
                ApplyOrDeleteButton.Visibility = ViewStates.Invisible;
            }

            ApplyOrDeleteButton.Click += ApplyOrDeleteButtonClicked;
        }

        //Decides which action should be taken based on the button name
        public void ApplyOrDeleteButtonClicked(object sender,EventArgs e)
        {
            if (ApplyOrDeleteButton.Text.Equals("Delete Event"))
            {
                this.DeleteEvent();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Apply to Event"))
            {
                this.ApplyToEvent();
            }
            else if(ApplyOrDeleteButton.Text.Equals("Drop From Event"))
            {
                this.RemoveFromRoster();
            }
            else if(ApplyOrDeleteButton.Text.Equals("Waitlist for Event"))
            {
                this.WaitlistForEvent();
            }
            else if(ApplyOrDeleteButton.Text.Equals("Drop from Waitlist"))
            {
                this.DropFromWaitlist();
            }
            
        }

        //Proceeds to execute the remove volunteer from waitlist
        //upon clicking the "Drop from Waitlist" button
        public void DropFromWaitlist()
        {
            var dropFromWaitlistTask = System.Threading.Tasks.Task.Run(async () =>
            {
                await RemoveVolunteerFromWaitlist();
            });
        }

        //Proceeds to execute the add volunteer to waitlist
        //upon clicking the "Waitlist for Event button"
        public void WaitlistForEvent()
        {
            var waitlistForEventTask = System.Threading.Tasks.Task.Run(async () =>
            {

                await AddVolunteerToWaitlist(Convert.ToInt32(WLID));

            });
        }

        //Proceeds to execute the remove volunteer from roster upon
        //clicking on the Drop from roster
        public void RemoveFromRoster()
        {
            var queryvolhistorytask = System.Threading.Tasks.Task.Run(async () =>
            {

                await RemoveVolunteerFromRoster();

            });
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

        //Checks if a volunteer exists in a roster
        public bool CheckIfVolunteerIsInRoster(JObject eventRoster)
        {
            foreach(var attendee in eventRoster)
            {
                if (attendee.Key.Equals(AppData.CurUser.UID))
                {
                    return true;
                }
            }

            return false;
        }

        //Checks if a volunteer exists in a wailists
        public bool CheckIfVolunteerIsInWaitlist(JObject waitlist)
        {
            foreach(var waitlistedAttendee in waitlist)
            {
                if (waitlistedAttendee.Value.ToString().Equals(AppData.CurUser.UID))
                {
                    return true;
                }
            }
            return false;
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


        //Proceeds to add a volunteer to the waitlist of an event
        public async System.Threading.Tasks.Task AddVolunteerToWaitlist(int wlid)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //increment the waitlist id which serves as the next id that will be generated 
            wlid++;
            //Create a dictionary which stores the auto increment id and the UID of the volunteer that will be added
            Dictionary<string, string> waitlistedAttendee = new Dictionary<string, string>();
            waitlistedAttendee.Add(Convert.ToString(wlid), AppData.CurUser.UID);

            PushResponse addVolToWaitlist = await firebaseClient.PushAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/waitlist/", waitlistedAttendee);

        }

        //Proceeds to remove a volunteer from the wailist of an event
        public async System.Threading.Tasks.Task<string> RemoveVolunteerFromWaitlist()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse deleteVolFromWaitlist = await firebaseClient.DeleteAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/waitlist/" + Convert.ToString(FoundPosition));

            return deleteVolFromWaitlist.Body;

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