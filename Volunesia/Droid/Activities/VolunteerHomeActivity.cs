﻿using System;
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
    [Activity(Label = "VolunteerHomeActivity")]
    public class VolunteerHomeActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.VolunteerHome);
            // Create your application here

            Button settingsButton = FindViewById<Button>(Resource.Id.settingsButton);

            settingsButton.Click += openSettings;
        }

        public void openSettings(object sender, EventArgs e)
        {
            //redirect to settings activity page
            StartActivity(typeof(SettingsActivity));
        }
    }
}