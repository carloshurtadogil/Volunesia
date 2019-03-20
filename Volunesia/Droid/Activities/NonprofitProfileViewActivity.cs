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

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "NonprofitProfileViewActivity")]
    public class NonprofitProfileViewActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.NPProfileView);
            var allEventsButton = FindViewById<Button>(Resource.Id.allNPEventsButton);
            var createEventButton = FindViewById<Button>(Resource.Id.createEventButton);
            var profileButton = FindViewById<Button>(Resource.Id.npProfileButton);
            
            allEventsButton.Click += LoadAllNPEventsFragment;
            createEventButton.Click += GoToEventCreationPage;
            profileButton.Click +=LoadProfileFragment;
        }

        /// <summary>
        /// Loads up the All Nonprofit Events fragment
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void LoadAllNPEventsFragment(object sender, EventArgs e)
        {
            FragmentTransaction fragmentTransaction = FragmentManager.BeginTransaction();
            NPAllEventsFragment npAllEventsFragment = new NPAllEventsFragment();
            fragmentTransaction.Replace(Resource.Layout.NPAllEvents, npAllEventsFragment);
            fragmentTransaction.Commit();
        }

        /// <summary>
        /// Loads up the NPProfileFragment
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void LoadProfileFragment(object sender, EventArgs e)
        {

            FragmentTransaction fragmentTransaction = FragmentManager.BeginTransaction();
            NPProfileFragment npProfileFragment = new NPProfileFragment();
            //fragmentTransaction.Replace(Resource.Layout.NPProfile, npProfileFragment);
            fragmentTransaction.Commit();
        }

        /// <summary>
        /// Goes to the Event Creation page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GoToEventCreationPage(object sender, EventArgs e)
        {
            StartActivity(typeof(CreateEventActivity));
        }

        /// <summary>
        /// Goes to the Notifications page for a nonprofit organization
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GoToNotificationsPage(object sender, EventArgs e)
        {
            //StartActivivty(typeof(NPNotificationsActivity));
        }

    }
}