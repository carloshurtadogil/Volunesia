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

namespace Volunesia.Droid
{
    [Activity(Label = "NonprofitRegisterActivity")]
    public class NonprofitTypeRegisterActivity : Activity
    {
        public User theUser { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.NonprofitTypeRegister);

            theUser = JsonConvert.DeserializeObject<User>(Intent.GetStringExtra("user"));


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
            credentialsIntent.PutExtra("user", JsonConvert.SerializeObject(theUser));
            StartActivity(credentialsIntent);
        }

        //Jumps  to the school nonprofit registration activity page
        public void JumpToSchoolNPActivity(object sender, EventArgs e)
        {

            var credentialsIntent = new Intent(this, typeof(SchoolNonprofitRegisterActivity));
            credentialsIntent.PutExtra("user", JsonConvert.SerializeObject(theUser));
            StartActivity(credentialsIntent);
        }

        //Jumps to the local nonprofit registration activity page
        public void JumpToLocalNPActivity(object sender, EventArgs e)
        {
            var credentialsIntent = new Intent(this, typeof(LocalNonprofitRegisterActivity));
            credentialsIntent.PutExtra("user", JsonConvert.SerializeObject(theUser));
            StartActivity(credentialsIntent);
        }
    }
}