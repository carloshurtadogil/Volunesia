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

namespace Volunesia.Droid
{
    [Activity(Label = "CreateEventActivity")]
    public class CreateEventActivity : Activity
    {
        public EditText EventName { get; set; }
        public EditText EventDate { get; set; }
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
            EventTime = FindViewById<EditText>(Resource.Id.eventTimeField);
            EventDes = FindViewById<EditText>(Resource.Id.eventDescriptionField);
            AppDeadline = FindViewById<EditText>(Resource.Id.appDeadlineField);

            Button createEventButton = FindViewById<Button>(Resource.Id.createEventButton);

            createEventButton.Click += EventCreation;


        }

        private void EventCreation(object sender, EventArgs e)
        {
            IDGenerator generator = new IDGenerator();
            eventID = generator.GenerateEventID();
            mainDict.Add("applicationdeadline", AppDeadline.Text);
            mainDict.Add("imagepath", "standard");
            mainDict.Add("eventdate", EventDate.Text);
            mainDict.Add("eventdesc", EventDes.Text);
            mainDict.Add("eventname", EventName.Text);
            mainDict.Add("poster", AppData.CurUser.UID);
            mainDict.Add("waitlist", 0);
            mainDict.Add("wlcounter", 0);
            mainDict.Add("wlid", 0);

            try
            {
                var someTask = System.Threading.Tasks.Task.Run(async () => {

                    return await PostEvent();

                });
                StartActivity(typeof(NonprofitHomeActivity));
            }
            catch(Exception q)
            {
                Console.WriteLine(q.InnerException);
            }


        }

        public async System.Threading.Tasks.Task<String> PostEvent()
        {
           
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            SetResponse response = await firebaseClient.SetAsync("events/" + AppData.NonprofitRepresentative.AssociatedNonprofit + "/" + eventID, mainDict);

            return "done";
        }
    }
}