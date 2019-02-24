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
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "NonprofitHomeActivity")]
    public class NonprofitHomeActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {

            Console.WriteLine(AppData.CurUser.EmailAddress + " " + AppData.CurUser.UID);

            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.NonprofitHome);

            Button settingsButton = FindViewById<Button>(Resource.Id.settingButton);

            settingsButton.Click += GoToSettingsPage;

            // Create your application here
        }

        public void GoToSettingsPage(object sender, EventArgs e)
        {
            //StartActivity(typeof(SettingsActivity));
        }
    }
}