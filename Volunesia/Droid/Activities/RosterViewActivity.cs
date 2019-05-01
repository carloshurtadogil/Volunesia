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
using Newtonsoft.Json;
using Volunesia.Models;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "RosterViewActivity")]
    public class RosterViewActivity : Activity
    {
        public List<Attendee> Attendees { get; set; }
        private List<string> mItems;
        private ListView mListView;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.RosterView);
            Attendees = JsonConvert.DeserializeObject<List<Attendee>>(Intent.GetStringExtra("checkAttendance"));

            mItems = new List<string>();
            mListView = FindViewById<ListView>(Resource.Id.attendeesInEventRosterListView);

            foreach(var attendee in Attendees)
            {
                mItems.Add(attendee.EmailAddress);
            }

            //Adapt the list into a ListView
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

            var backToEventPageButton = FindViewById<Button>(Resource.Id.backToEventPageButton);
            backToEventPageButton.Click += GoBackToEventPage;

            mListView.ItemClick += CheckAttendeeVolunteerProfile;
        }

        /// <summary>
        /// Upon clicking the back button, navigate back to the event page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GoBackToEventPage(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Upon clicking on an attendee item, head to the attendee/volunteer's profile
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void CheckAttendeeVolunteerProfile(object sender, AdapterView.ItemClickEventArgs e)
        {
            var intent = new Intent(this, typeof(VolunteerProfileActivity));
            intent.PutExtra("chosenAttendeeVolunteer", JsonConvert.SerializeObject(Attendees[e.Position]));
            StartActivity(intent);
        }
    }
}