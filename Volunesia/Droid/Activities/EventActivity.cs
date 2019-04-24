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
using Newtonsoft.Json;
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
            SelectedEvent = JsonConvert.DeserializeObject<Event>(Intent.GetStringExtra("event"));
            WLID = "0";
            //Retrieve roster and waitlist from Firebase
            var eventTask = System.Threading.Tasks.Task.Run(async () => {

                return await GetRosterAndWaitlist();

            });
            var eventResult = eventTask.Result;

            //Parse the JSON response to get the roster and waitlist content
            var eventInfoAsJson = JObject.Parse(eventResult);

            SelectedEvent.EventDate = Convert.ToDateTime(eventInfoAsJson["eventdate"].ToString());
            var rosterChecker = eventInfoAsJson["roster"].ToString();
            var waitlistChecker = eventInfoAsJson["waitlist"].ToString();

            var waitlistID = eventInfoAsJson["wlid"];

            SetContentView(Resource.Layout.Event);
            //retrieve the event name field
            var eventNameField = FindViewById<TextView>(Resource.Id.eventNameTextView);
            eventNameField.Text = SelectedEvent.EventName;
            //retrieve the event date field
            var eventDateField = FindViewById<TextView>(Resource.Id.eventDateTextView);
            eventDateField.Text = SelectedEvent.EventDate.ToString();
            //retrieve the event description field
            var eventDescriptionField = FindViewById<TextView>(Resource.Id.eventDescriptionContent);
            eventDescriptionField.Text = SelectedEvent.EventDescription;

            ApplyOrDeleteButton = FindViewById<Button>(Resource.Id.applyOrDeleteButton);

            JObject roster = null;
            JObject waitlist = null;

            //Checks if the user type is a nonprofit to allow deletion of an event
            if (AppData.CurUser.UserType.Equals("NP") && AppData.NonprofitRepresentative.AssociatedNonprofit.Equals(SelectedEvent.HostID))
            {
                if(DateTime.Compare(SelectedEvent.EventEndDate, DateTime.Now) < 0)
                {
                    ApplyOrDeleteButton.Text = "Generate XP";
                    ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                }
                else
                {
                    ApplyOrDeleteButton.Text = "Delete Event";
                    ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                }
            }
            //checks if the user type is a volunteer
            else if (AppData.CurUser.UserType.Equals("V"))
            {
                
                //Check if there is a presence of a roster, and then proceeds to check
                //if the volunteer is in the roster and add all attendees to a roster
                bool volunteerInRoster = false;
                if (!rosterChecker.Equals("0"))
                {
                    roster = (JObject)eventInfoAsJson["roster"];
                    volunteerInRoster = CheckIfVolunteerIsInRoster(roster);
                    //AddAttendeesToRoster(roster);
                }

                //if the volunteer is in the roster, proceed to check if the volunteer has checked in
                if (volunteerInRoster == true)
                {

                    bool volunteerCheckedIn = CheckIfVolunteerCheckedIn(roster);
                    //if the volunteer has not checked in, the volunteer has two options
                    //1) Checkin before the event starts or during its duration
                    //2) Withdraw from the event before it occurs
                    if (!volunteerCheckedIn)
                    {
                       
                        //Check the date of the event. If it is approcating then set the button to withdraw 
                        //from event. If the event is currently taking place then set the button to checkin.
                        if (SelectedEvent.EventDate.Date == DateTime.Today.Date && DateTime.Now < SelectedEvent.EventEndDate)
                        {
                            ApplyOrDeleteButton.Text = "Check-in";
                            ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                        }

                        else
                        {
                            ApplyOrDeleteButton.Text = "Withdraw from Event";
                            ApplyOrDeleteButton.Visibility = ViewStates.Visible;

                        }
                    }
                    //otherwise, prevent the volunteer from checking in or withdrawing from the event
                    else
                    {
                        AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                        dialogAlertConstruction.SetTitle("Checkin Error");
                        dialogAlertConstruction.SetMessage("Unable to check in, as you already have checked in!");

                        dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                        {

                            dialogAlertConstruction.Dispose();
                            StartActivity(typeof(VolunteerEventsActivity));

                        });
                        dialogAlertConstruction.Show();

                    }
                }
                else
                {
                    //check if the roster is not null, meaning there are other
                    //volunteers in the roster itself
                    if (roster != null)
                    {
                        //check if the roster is not full, then show "APPLY TO EVENT" 
                        if (SelectedEvent.Capacity != roster.Count)
                        {
                            ApplyOrDeleteButton.Text = "Apply to Event";
                            ApplyOrDeleteButton.Visibility = ViewStates.Visible;
                        }                       
                    }
                    //else, the roster and waitlist are empty, then allow a volunteer
                    //to apply to an event
                    else
                    {
                        ApplyOrDeleteButton.Text = "Apply to Event";
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
        public void ApplyOrDeleteButtonClicked(object sender, EventArgs e)
        {
            if (ApplyOrDeleteButton.Text.Equals("Delete Event"))
            {
                this.DeleteEvent();
            }
            else if(ApplyOrDeleteButton.Text.Equals("Generate XP"))
            {
                this.GenerateXP();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Apply to Event"))
            {
                this.ApplyToEvent();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Withdraw from Event"))
            {
                this.RemoveFromRoster();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Waitlist for Event"))
            {
                this.WaitlistForEvent();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Drop from Waitlist"))
            {
                this.DropFromWaitlist();
            }
            else if (ApplyOrDeleteButton.Text.Equals("Check-in"))
            {
                this.Checkin();
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

        /// <summary>
        /// Proceeds to visit the EventXPAssignment activity for the nonprofit to assign 
        /// xp to volunteers
        /// </summary>
        public void GenerateXP()
        {
            var intent = new Intent(this, typeof(EventXPAssignmentActivity));
            intent.PutExtra("finishedEvent", JsonConvert.SerializeObject(SelectedEvent));
            StartActivity(intent);
        }


        //Proceed to execute the checkin volunteer
        public void Checkin()
        {
            AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
            dialogAlertConstruction.SetTitle("Check-in");
            dialogAlertConstruction.SetMessage("Are you ready to check-in?");

            //If yes option is clicked, then check-in volunteer
            dialogAlertConstruction.SetPositiveButton("Yes", delegate
            {
                Dictionary<string, object> checkedAttendeeInfo = new Dictionary<string, object>();
                checkedAttendeeInfo.Add("attended", "Y");
                checkedAttendeeInfo.Add("checkintime", DateTime.Now.ToString());
                checkedAttendeeInfo.Add("contact", AppData.CurUser.EmailAddress);
                checkedAttendeeInfo.Add("hourscompleted", 0);
                checkedAttendeeInfo.Add("status", "Will Attend");
                var queryvolhistorytask = System.Threading.Tasks.Task.Run(async () =>
                {

                    return await CheckinVolunteer(checkedAttendeeInfo);

                });
                StartActivity(typeof(VolunteerEventsActivity));
            });
            //if no option is selected, then exit the AlertDialog
            dialogAlertConstruction.SetNegativeButton("No", delegate
            {
                dialogAlertConstruction.Dispose();

            });
            dialogAlertConstruction.Show();
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

                return await RemoveVolunteerFromRoster();

            });
            StartActivity(typeof(VolunteerEventsActivity));
        }

        /// <summary>
        /// Proceeds to execute once user clicks on Apply button
        /// </summary>
        public void ApplyToEvent()
        {
            AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
            dialogAlertConstruction.SetTitle("Ready to Volunteer?");
            dialogAlertConstruction.SetMessage("Are you ready to make a difference?");

            //If yes option is clicked, then add volunteer to event roster
            dialogAlertConstruction.SetPositiveButton("Yes", delegate
            {
                var queryvolhistorytask = System.Threading.Tasks.Task.Run(async () =>
                {

                    return await AddVolunteerToEventRoster();

                });
                StartActivity(typeof(VolunteerEventsActivity));
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
            var eventTask = System.Threading.Tasks.Task.Run(async () => {

               return await DeleteEventAsync();

            });
            StartActivity(typeof(NonprofitProfileViewActivity));
        }


        /// <summary>
        /// Deletes an existing event from Firebase asynchronously
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> DeleteEventAsync()
        {

            //string[] attendeeEmails = new string[SelectedEvent.EventRoster.AttendeeList.Count];
            int index = 0;
            if (SelectedEvent.EventRoster!=null)
            {

                //traverse the roster, and obtain all email addresses of attendees
                string[] attendeeEmails = new string[SelectedEvent.EventRoster.AttendeeList.Count];

                foreach (var attendee in SelectedEvent.EventRoster.AttendeeList)
                {
                    attendeeEmails[index] = attendee.EmailAddress;
                    index++;
                    try
                    {
                        var deleteVolunteerHistoryForEvent = System.Threading.Tasks.Task.Run(async () => {

                            return await DeleteVolunteerHistoryForEvent(attendee.UID);

                        });
                    }
                    catch(Exception e)
                    {

                    }
                }



                //Create an email message that will be sent to all attendees for an event that will be deleted
                Intent emailIntent = new Intent(Intent.ActionSendto);
                emailIntent.PutExtra(Intent.ExtraEmail, attendeeEmails);
                emailIntent.PutExtra(Intent.ExtraSubject, "Volunesia " + SelectedEvent.EventName + " has been removed");
                emailIntent.PutExtra(Intent.ExtraText, "Hello Volunteer, Unfortunately, the " + SelectedEvent.EventName + " has been cancelled");

                try
                {
                    StartActivity(Intent.CreateChooser(emailIntent, "Send mail to"));
                }
                catch (Exception emailNotSentException)
                {
                    //
                }


            }
            // Set the events/nonprofitid to 0, before Firebase deletes that component...
            if (AppData.NPEventsHistory.NPEvents.Count ==1)
            {
                AppData.NPEventsHistory.RemoveNonprofitEvent(SelectedEvent.EventID);

                IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
                IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
                FirebaseResponse deleteEventResponse = await firebaseClient.SetAsync("events/" + AppData.NonprofitRepresentative.AssociatedNonprofit, 0);
                return deleteEventResponse.Body;
            }
            //otherwise, simply delete the event, since there are other events that the nonprofit org is hosting
            else
            {
                AppData.NPEventsHistory.RemoveNonprofitEvent(SelectedEvent.EventID);

                IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
                IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
                FirebaseResponse deleteEventResponse = await firebaseClient.DeleteAsync("events/" + AppData.NonprofitRepresentative.AssociatedNonprofit + "/" + SelectedEvent.EventID);
                return deleteEventResponse.Body;
            }
            
            
        }

        /// <summary>
        /// Adds all attendees of an event roster from Firebase to an Event Roster object
        /// </summary>
        public void AddAttendeesToRoster(JObject eventRoster)
        {
            Roster theRoster = new Roster();
            theRoster.AttendeeList = new List<Attendee>();
            foreach (var attendee in eventRoster)
            {
                Attendee attendeeToBeAdded = new Attendee();
                attendeeToBeAdded.UID = attendee.Key;
                attendeeToBeAdded.EmailAddress = attendee.Value["contact"].ToString();
                theRoster.AttendeeList.Add(attendeeToBeAdded);
            }
            SelectedEvent.EventRoster = theRoster;

        }


        /// <summary>
        /// Checks if a volunteer has checked in for an event
        /// </summary>
        /// <param name="eventRoster"></param>
        /// <returns></returns>
        public bool CheckIfVolunteerCheckedIn(JObject eventRoster)
        {
            foreach(var attendee in eventRoster)
            {
                if (attendee.Key.Equals(AppData.CurUser.UID))
                {
                    var checkinStatus = attendee.Value["checkintime"].ToString();
                    if (checkinStatus.Equals("0") || checkinStatus.Equals("00") || string.IsNullOrEmpty(checkinStatus))
                    {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        }


        /// <summary>
        /// Checks if a volunteer exists in a roster
        /// </summary>
        /// <param name="eventRoster"></param>
        /// <returns></returns>
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
            attendeeInformation.Add("hourscompleted", 0);
            attendeeInformation.Add("checkintime", "");
            attendeeInformation.Add("status", "Will Attend");
            attendeeInformation.Add("contact", AppData.CurUser.EmailAddress);

            Dictionary<string, object> volunteerHistoryInfo = new Dictionary<string, object>();
            volunteerHistoryInfo.Add("attended", "N");
            volunteerHistoryInfo.Add("eventdate", Convert.ToString(SelectedEvent.EventDate));
            volunteerHistoryInfo.Add("hoursvolunteered", 0);
            volunteerHistoryInfo.Add("nonprofitid", SelectedEvent.HostID);
            volunteerHistoryInfo.Add("nonprofitname", SelectedEvent.EventName);
            volunteerHistoryInfo.Add("eventname", SelectedEvent.EventName);

            FirebaseResponse setVolunteerHistoryResponse = await firebaseClient.SetAsync("volunteerhistory/" +  AppData.CurUser.UID + "/" + SelectedEvent.EventID, volunteerHistoryInfo );
            //Retrieve the user 
            SetResponse response = await firebaseClient.SetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster/" + AppData.CurUser.UID, attendeeInformation);

            VolunteerEvent futureVolunteerEvent = new VolunteerEvent()
            {
                Attended = "N",
                EventDate = SelectedEvent.EventDate,
                HoursCompleted = 0,
                EventID = SelectedEvent.EventID,
                EventName = SelectedEvent.EventName,
                NonprofitID = SelectedEvent.HostID,
                NonprofitName = SelectedEvent.EventName

            };
            AppData.FutureEvents.AddEvent(futureVolunteerEvent);

            string resultant = response.Body;

            return resultant;
        }

        //Removes a volunteer from the event roster and proceeds to add the first volunteer 
        //on the waitlist to the event roster
        public async System.Threading.Tasks.Task<string> RemoveVolunteerFromRoster()
        {
            //Deletes the volunteer from the event roster
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse deleteResponse = await firebaseClient.DeleteAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster/" + AppData.CurUser.UID);
            FirebaseResponse deleteVolHistResponse = await firebaseClient.DeleteAsync("volunteerhistory/" + AppData.CurUser.UID + "/" + SelectedEvent.EventID);
            //Retrieve the roster again to make sure the roster content has been deleted
            //the roster attribute is deleted when there aren't any more volunteers in roster
            FirebaseResponse checkForRoster = await firebaseClient.GetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID+ "/roster");

            AppData.FutureEvents.RemoveVolunteerEvent(SelectedEvent.EventID);

            if (checkForRoster.Body.Equals("null") || checkForRoster.Body.Equals(null))
            {
                FirebaseResponse createRoster = await firebaseClient.SetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster", 0);
            }

            return null;
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
            FirebaseResponse deleteVolFromWaitlist = await firebaseClient.DeleteAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/waitlist/" + FoundPosition);

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

        /// <summary>
        /// Checks in the volunteer by writing attendee and event information to Firebase
        /// </summary>
        /// <param name="checkedAttendeeInfo"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> CheckinVolunteer(Dictionary<string, object> checkedAttendeeInfo)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse response = await firebaseClient.SetAsync("events/" + SelectedEvent.HostID + "/" + SelectedEvent.EventID + "/roster/" + AppData.CurUser.UID, checkedAttendeeInfo);

            return response.Body;
        }

        /// <summary>
        /// Deletes a volunteer's volunteer history for an event that has been cancelled
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> DeleteVolunteerHistoryForEvent(string attendeeUID)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse response = await firebaseClient.DeleteAsync("volunteerhistory/" + attendeeUID + "/" + SelectedEvent.EventID);

            return response.Body;

        }

    }
}