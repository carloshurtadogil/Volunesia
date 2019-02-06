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

namespace Volunesia.Droid
{
    [Activity(Label = "RegisterActivity", MainLauncher = true)]
    public class RegisterActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.Register);


           

            Button volunteerSignUpButton = FindViewById<Button>(Resource.Id.volunteerButton);
            Button nonprofitSignUpButton = FindViewById<Button>(Resource.Id.nonProfitButton);

            volunteerSignUpButton.Click += JumpToVolunteerRegisterActivity;
            nonprofitSignUpButton.Click += JumpToNonprofitRegisterActivity;
        }

        public void JumpToVolunteerRegisterActivity(object sender, EventArgs e)
        {
            StartActivity(typeof(VolunteerRegisterActivity));
        }

        public void JumpToNonprofitRegisterActivity(object sender, EventArgs e)
        {
            //StartActivity(typeof(NonprofitRegisterActivity));
        }
    }

    
}