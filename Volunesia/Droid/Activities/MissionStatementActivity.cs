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
using Firebase.Database.Query;
using Newtonsoft.Json;
using Volunesia.Droid.Activities;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid
{
    [Activity(Label = "MissionStatementActivity")]
    public class MissionStatementActivity : Activity
    {
        public User theUser { get; set; }
        public string EIN { get; set; }
        public string OrganizationName { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public string PhoneNumber { get; set; }
        public string NonprofitType { get; set; }
        public EditText MissionStatement { get; set; }
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.MissionStatement);

            theUser = JsonConvert.DeserializeObject<User>(Intent.GetStringExtra("user"));
            //Retrieve the information from the previous activity
            City = Intent.GetStringExtra("city");
            EIN = Intent.GetStringExtra("ein");
            OrganizationName = Intent.GetStringExtra("name");
            PhoneNumber = Intent.GetStringExtra("primaryphone");
            State = Intent.GetStringExtra("state");
            NonprofitType = Intent.GetStringExtra("type");
            ZipCode = Intent.GetStringExtra("zip");

            MissionStatement = FindViewById<EditText>(Resource.Id.missionStatementField);
            var finalizeNPRegistrationButton = FindViewById<Button>(Resource.Id.finalizeCompleteNPRegistrationButton);
            finalizeNPRegistrationButton.Click += FinalizeNonprofitRegistration;

        }

        //Add the nonprofit user to the Firebase Database
        public void FinalizeNonprofitRegistration(object sender, EventArgs e)
        {

            string missionStatement = MissionStatement.Text;
            theUser.UID = AppData_Droid.Auth.CurrentUser.Uid;

            Dictionary<string, string> newNonprofit = new Dictionary<string, string>();
            newNonprofit.Add("city", City);
            if (NonprofitType.Equals("established"))
            {
                newNonprofit.Add("ein", EIN);
            }
            
            newNonprofit.Add("missionstatement", missionStatement);
            newNonprofit.Add("name", OrganizationName);
            newNonprofit.Add("primaryphone", PhoneNumber);
            newNonprofit.Add("primarycontact", theUser.UID);
            newNonprofit.Add("state", State);
            newNonprofit.Add("type", NonprofitType);
            newNonprofit.Add("zip", ZipCode);

            Register r = new Register();
            //Add the nonprofit org to Firebase
            string generatedID = r.AddNonprofitOrganizationToFirebase(newNonprofit);
            //Add the user to Firebase
            r.AddUserToFirebase(theUser, generatedID);
            //Add the nonprofit rep to Firebase
            r.AddNonprofitRepToFirebase(generatedID, OrganizationName);


            //Navigate to the WelcomeActivity
            StartActivity(typeof(NonprofitProfileViewActivity));
        }
    }
}