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
    [Activity(Label = "RegisterActivity")]
    public class RegisterActivity : Activity
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.Register);

            FirstName = Intent.GetStringExtra("firstName");
            LastName= Intent.GetStringExtra("lastName");
            EmailAddress = Intent.GetStringExtra("emailAddress");
            Password = Intent.GetStringExtra("password");

           

            Button volunteerSignUpButton = FindViewById<Button>(Resource.Id.volunteerButton);
            Button nonprofitSignUpButton = FindViewById<Button>(Resource.Id.nonProfitButton);

            volunteerSignUpButton.Click += JumpToVolunteerRegisterActivity;
            nonprofitSignUpButton.Click += JumpToNonprofitRegisterActivity;
        }

        public void JumpToVolunteerRegisterActivity(object sender, EventArgs e)
        {
            var credentialsIntent = new Intent(this, typeof(VolunteerRegisterActivity));
            credentialsIntent.PutExtra("firstName", FirstName);
            credentialsIntent.PutExtra("lastName", LastName);
            credentialsIntent.PutExtra("emailAddress", EmailAddress);
            credentialsIntent.PutExtra("password", Password);

            StartActivity(credentialsIntent);
        }

        public void JumpToNonprofitTypeRegisterActivity(object sender, EventArgs e)
        {
            var credentialsIntent = new Intent(this, typeof(NonprofitTypeRegisterActivity));
            credentialsIntent.PutExtra("firstName", FirstName);
            credentialsIntent.PutExtra("lastName", LastName);
            credentialsIntent.PutExtra("emailAddress", EmailAddress);

            StartActivity(credentialsIntent);
        }
    }

    
}