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

using Volunesia.Models;
using Newtonsoft.Json;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "PastEventActivity")]
    public class PastEventActivity : Activity
    {
        public VolunteerEvent SelectedEvent { get; set; }
        public TextView NonprofitName { get; set; }
        public TextView EventName { get; set; }
        public TextView EventDate { get; set; }
        public TextView Attended { get; set; }
        public TextView Hours { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SelectedEvent = JsonConvert.DeserializeObject<VolunteerEvent>(Intent.GetStringExtra("pastEvent"));

            SetContentView(Resource.Layout.PastEvent);

            NonprofitName = FindViewById<TextView>(Resource.Id.nonprofitNameView);
            EventName = FindViewById<TextView>(Resource.Id.eventNameView);
            EventDate = FindViewById<TextView>(Resource.Id.eventDateView);
            Attended = FindViewById<TextView>(Resource.Id.attendedView);
            Hours = FindViewById<TextView>(Resource.Id.hoursView);

            Button rateButton = FindViewById<Button>(Resource.Id.rate);
            Button generateButton = FindViewById<Button>(Resource.Id.generate);
            Button backButton = FindViewById<Button>(Resource.Id.backToLast);

            NonprofitName.Text = SelectedEvent.NonprofitName;
            EventName.Text = SelectedEvent.EventName;
            EventDate.Text = SelectedEvent.EventDate.ToString();

            if (SelectedEvent.Attended == "Y")
            {
                Attended.Text = "You attended this event!";
            } else
            {
                Attended.Text = "You did not event this event.";
            }

            Hours.Text = "Hours Completed: " + SelectedEvent.HoursCompleted.ToString();

            rateButton.Click += RateClicked;
            generateButton.Click += GenerateCertificate;
            backButton.Click += GoBack;
            
        }

        public void RateClicked(object sender, EventArgs e)
        {
            var intent = new Intent(this, typeof(EventRatingActivity));
            intent.PutExtra("eventToBeRated", JsonConvert.SerializeObject(SelectedEvent));
            StartActivity(typeof(EventRatingActivity));
        }

        public void GenerateCertificate(object sender, EventArgs e)
        {
            
        }

        public void GoBack(object sender, EventArgs e)
        {
            StartActivity(typeof(VolunteerEventsActivity));
        }
    }
}