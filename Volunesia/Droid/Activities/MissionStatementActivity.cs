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

namespace Volunesia.Droid
{
    [Activity(Label = "MissionStatementActivity")]
    public class MissionStatementActivity : Activity
    {

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

            string uid = AppData_Droid.Auth.CurrentUser.Uid;

            Dictionary<string, string> newNonprofit = new Dictionary<string, string>();
            newNonprofit.Add("city", City);
            newNonprofit.Add("ein", EIN);
            newNonprofit.Add("name", OrganizationName);
            newNonprofit.Add("primaryphone", PhoneNumber);
            newNonprofit.Add("primarycontact", uid);
            newNonprofit.Add("state", State);
            newNonprofit.Add("type", NonprofitType);
            newNonprofit.Add("zip", ZipCode);


            AppData_Droid.NonprofitNode.Child(EIN).PutAsync(newNonprofit);
        }
    }
}