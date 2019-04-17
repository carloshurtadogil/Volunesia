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
using Volunesia.Droid.Activities;
using Volunesia.Droid.Service;
using Volunesia.Services;
using Volunesia.Models;

namespace Volunesia.Droid
{
    [Activity(Label = "CreateEventActivity")]
    public class CreateEventActivity : Activity
    {
        public EditText EventName { get; set; }
        public EditText EventDate { get; set; }
        public EditText EventEndDate { get; set; }
        public EditText EventTime { get; set; }
        public EditText EventDes { get; set; }
        public EditText AppDeadline { get; set; }
        public string eventID { get; set; }
        public Dictionary<string, object> mainDict = new Dictionary<string, object>();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.CreateEvent);

            EventName = FindViewById<EditText>(Resource.Id.eventNameField);
            EventDate = FindViewById<EditText>(Resource.Id.eventDateField);
            EventEndDate = FindViewById<EditText>(Resource.Id.eventEndDateField);
            EventTime = FindViewById<EditText>(Resource.Id.eventTimeField);
            EventDes = FindViewById<EditText>(Resource.Id.eventDescriptionField);
            AppDeadline = FindViewById<EditText>(Resource.Id.appDeadlineField);

            Button createEventButton = FindViewById<Button>(Resource.Id.createEventButton);

            createEventButton.Click += EventCreation;


        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void EventCreation(object sender, EventArgs e)
        {

            EventCreationVerification eventCreationVerif = new EventCreationVerification();
            eventCreationVerif.VerifyEventCreationDetails(EventDate.Text, EventEndDate.Text, AppDeadline.Text, EventName.Text);

            //if there are no error messages, then proceed to create the event
            if (string.IsNullOrEmpty(eventCreationVerif.ErrorMessages.ToString()))
            {

                IDGenerator generator = new IDGenerator();
                eventID = generator.GenerateID();
                mainDict.Add("applicationdeadline", AppDeadline.Text);
                mainDict.Add("imagepath", "standard");
                mainDict.Add("eventdate", EventDate.Text);
                mainDict.Add("eventenddate", EventEndDate.Text);
                mainDict.Add("eventdesc", EventDes.Text);
                mainDict.Add("eventname", EventName.Text);
                mainDict.Add("poster", AppData.CurUser.UID);
                mainDict.Add("roster", 0);
                mainDict.Add("waitlist", 0);
                mainDict.Add("wlcounter", 0);
                mainDict.Add("wlid", 0);

                Event newEvent = new Event()
                {
                    ApplicationDeadline = Convert.ToDateTime(AppDeadline.Text),
                    EventID = eventID,
                    EventDate = Convert.ToDateTime(EventDate.Text),
                    EventEndDate = Convert.ToDateTime(EventEndDate.Text),
                    EventDescription = EventDes.Text,
                    EventName = EventName.Text,
                    Poster = AppData.CurUser.UID
                };

                try
                {
                    var someTask = System.Threading.Tasks.Task.Run(async () => {

                        return await PostEvent();

                    });
                    AppData.NPEventsHistory.AddNonprofitEvent(newEvent);
                    StartActivity(typeof(NonprofitProfileViewActivity));
                }
                catch (Exception q)
                {
                    Console.WriteLine(q.InnerException);
                }

            }
            //otherwise display an error message with the errors listed
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Error has occurred");
                dialogAlertConstruction.SetMessage(eventCreationVerif.ErrorMessages.ToString());
                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {
                    dialogAlertConstruction.Dispose();
                });
                dialogAlertConstruction.Show();
            }
        }

        /// <summary>
        /// Posts a nonprofit event to Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> PostEvent()
        {
           
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse response = await firebaseClient.SetAsync("events/" + AppData.NonprofitRepresentative.AssociatedNonprofit + "/" + eventID, mainDict);

            return "done";
        }
    }
}