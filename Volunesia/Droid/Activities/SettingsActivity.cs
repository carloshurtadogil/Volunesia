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
    [Activity(Label = "SettingsActivity")]
    public class SettingsActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.SettingsPage);

            // Create your application here
            Button updateemailButton = FindViewById<Button>(Resource.Id.updateemailButton);

            updateemailButton.Click += UpdateUserEmail;

            Button updatepwdButton = FindViewById<Button>(Resource.Id.updateemailButton);

            updatepwdButton.Click += UpdateUserPwd;

            Button logoutButton = FindViewById<Button>(Resource.Id.logoutButton);

            logoutButton.Click += LogoutUser;
        }

        public void UpdateUserEmail(object sender, EventArgs e)
        {
            //redirect to its activity page
            StartActivity(typeof(ChangeEmailActivity));
        }

        public void UpdateUserPwd(object sender, EventArgs e)
        {
            //redirect to its activity page
            StartActivity(typeof(ChangePasswordActivity));
        }

        public void LogoutUser(object sender, EventArgs e)
        {
            AppData.CurUser = null;
            AppData_Droid.Auth.SignOut();
            StartActivity(typeof(MainActivity));
        }
    }
}