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
    [Activity(Label = "NonprofitRegisterActivity")]
    public class NonprofitTypeRegisterActivity : Activity
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.NonprofitTypeRegister);


            FirstName = Intent.GetStringExtra("firstName");
            LastName = Intent.GetStringExtra("lastName");
            EmailAddress = Intent.GetStringExtra("emailAddress");


            var establishedNPButton = FindViewById<Button>(Resource.Id.establishedNPButton);
            var schoolNPButton = FindViewById<Button>(Resource.Id.schoolNPButton);
            var localNPButton = FindViewById<Button>(Resource.Id.localNPButton);

            establishedNPButton.Click += JumpToEstablishedNPActivity;
            schoolNPButton.Click += JumpToSchoolNPActivity;
            localNPButton.Click += JumpToLocalNPActivity;



        }

        //Jumps to the established nonprofit activity page
        public void JumpToEstablishedNPActivity(object sender, EventArgs e)
        {
            var credentialsIntent = new Intent(this, typeof(EstablishedNonprofitRegisterActivity));
            credentialsIntent.PutExtra("firstName", FirstName);
            credentialsIntent.PutExtra("lastName", LastName);
            credentialsIntent.PutExtra("emailAddress", EmailAddress);

            StartActivity(credentialsIntent);
        }

        //Jumps  to the school nonprofit registration activity page
        public void JumpToSchoolNPActivity(object sender, EventArgs e)
        {

            var credentialsIntent = new Intent(this, typeof(SchoolNonprofitRegisterActivity));
            credentialsIntent.PutExtra("firstName", FirstName);
            credentialsIntent.PutExtra("lastName", LastName);
            credentialsIntent.PutExtra("emailAddress", EmailAddress);

            StartActivity(credentialsIntent);
        }

        //Jumps to the local nonprofit registration activity page
        public void JumpToLocalNPActivity(object sender, EventArgs e)
        {
            var credentialsIntent = new Intent(this, typeof(LocalNonprofitRegisterActivity));
            credentialsIntent.PutExtra("firstName", FirstName);
            credentialsIntent.PutExtra("lastName", LastName);
            credentialsIntent.PutExtra("emailAddress", EmailAddress);

            StartActivity(credentialsIntent);
        }
    }
}