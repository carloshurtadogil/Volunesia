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
using Firebase.Database.Query;
using Volunesia.Droid.Service;
using Volunesia.Services;

namespace Volunesia.Droid
{
    [Activity(Label = "EstablishedNonprofitRegisterActivity")]
    public class EstablishedNonprofitRegisterActivity : Activity
    {

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public EditText EID { get; set; }
        public EditText OrganizationName { get; set; }
        public EditText City { get; set; }
        public EditText State { get; set; }
        public EditText ZipCode { get; set; }
        public EditText PhoneNumber { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.EstablishedNonprofitRegister);

            //Get first name, last name, and email address from the previous activity
            FirstName = Intent.GetStringExtra("firstName");
            LastName = Intent.GetStringExtra("lastName");
            EmailAddress = Intent.GetStringExtra("emailAddress");

            //Retrieve the contents from the EditTexts on the EstablishedNonprofitRegisterActivity page
            EID = FindViewById<EditText>(Resource.Id.eidField);
            OrganizationName = FindViewById<EditText>(Resource.Id.organizationNameField);
            City = FindViewById<EditText>(Resource.Id.cityField);
            State = FindViewById<EditText>(Resource.Id.stateField);
            ZipCode = FindViewById<EditText>(Resource.Id.zipCodeField);
            PhoneNumber = FindViewById<EditText>(Resource.Id.phoneNumberField);

            Button continueWithNPRegistration = FindViewById<Button>(Resource.Id.finalizeNPRegistrationButton);
            continueWithNPRegistration.Click += FinalizeNPRegistration;
        }


        public void FinalizeNPRegistration(object sender, EventArgs e)
        {

            //Responsible for checking email address, city, zip code and state
            ContactInformationVerification contactInfoVerif = new ContactInformationVerification();

            //Checks if there error messages generated from information verification,
            //if there isn't then proceed to the Mission statement activity page
            string errorMessageResult = contactInfoVerif.VerifyAllInformation(EID.Text, OrganizationName.Text, City.Text, State.Text, ZipCode.Text, PhoneNumber.Text);
            if (string.IsNullOrEmpty(errorMessageResult))
            {

                string uid = AppData_Droid.Auth.CurrentUser.Uid;

                Dictionary<string, string> newNonprofit = new Dictionary<string, string>();
                newNonprofit.Add("city", City.Text);
                newNonprofit.Add("name", OrganizationName.Text);
                newNonprofit.Add("primarycontact", uid);
                newNonprofit.Add("state", State.Text);
                newNonprofit.Add("type", "established");
                newNonprofit.Add("zip", ZipCode.Text);

                
                AppData_Droid.NonprofitNode.Child(uid).PutAsync(newNonprofit);
                
            }
            //else, send an AlertDialog showcasing all errors that have occurred
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Error has occurred");
                dialogAlertConstruction.SetMessage(errorMessageResult.ToString());

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }

        }
    }
}