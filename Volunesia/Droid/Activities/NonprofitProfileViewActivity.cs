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
            var notificationsButton = FindViewById<Button>(Resource.Id.notificationsButton);
            var allEventsButton = FindViewById<Button>(Resource.Id.allNPEventsButton);
            var profileButton = FindViewById<Button>(Resource.Id.npProfileButton);

            notificationsButton.Click += LoadNotificationsFragment;
            allEventsButton.Click += LoadAllNPEventsFragment;
            profileButton.Click +=LoadProfileFragment;
        }

        /// <summary>
        /// Loads up the notifications fragment
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void LoadNotificationsFragment(object sender, EventArgs e)
        {
            FragmentTransaction fragmentTransaction = FragmentManager.BeginTransaction();
            NPNotificationsFragment npNotificationsFragment = new NPNotificationsFragment();
            fragmentTransaction.Replace(23, npNotificationsFragment, "something else");
            fragmentTransaction.Commit();
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
            fragmentTransaction.Replace(23, npAllEventsFragment, "something else");
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
            fragmentTransaction.Replace(23, npProfileFragment, "something else");
            fragmentTransaction.Commit();
        }

    }
}