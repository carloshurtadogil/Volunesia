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
using Newtonsoft.Json;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid
{
    [Activity(Label = "EstablishedNonprofitRegisterActivity")]
    public class EstablishedNonprofitRegisterActivity : Activity
    {
        public User theUser { get; set; }
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

            //Get user from the previous activity
            theUser = JsonConvert.DeserializeObject<User>(Intent.GetStringExtra("user"));

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

            string errorMessageResult = contactInfoVerif.VerifyAllInformationForEstablishedNonprofit(EID.Text, OrganizationName.Text, City.Text, State.Text, ZipCode.Text, PhoneNumber.Text);
            if (string.IsNullOrEmpty(errorMessageResult))
            {
                AndroidAddressHandler addressHandler = new AndroidAddressHandler();
                string address = City.Text + "," + State.Text + " " + ZipCode.Text;

                //validate the address
                var validateLocationResponse = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await addressHandler.ValidateLocationAsync(address);

                });

                //if the address is indeed valid, then move on to the Mission Statement Activity page
                if (validateLocationResponse.Result)
                {
                    var intent = new Intent(this, typeof(MissionStatementActivity));
                    intent.PutExtra("city", City.Text);
                    intent.PutExtra("ein", EID.Text);
                    intent.PutExtra("name", OrganizationName.Text);
                    intent.PutExtra("primaryphone", PhoneNumber.Text);
                    intent.PutExtra("state", State.Text);
                    intent.PutExtra("type", "established");
                    intent.PutExtra("zip", ZipCode.Text);

                    intent.PutExtra("user", JsonConvert.SerializeObject(theUser));

                    StartActivity(intent);
                }
                //otherwise, notify user that address entered is invalid
                else
                {
                    AlertDialog.Builder locationAlertFailure = new AlertDialog.Builder(this);
                    locationAlertFailure.SetTitle("Error has occurred");
                    locationAlertFailure.SetMessage("Location entered is invaid, reenter appropriate City, State, ZIP");

                    locationAlertFailure.SetPositiveButton("GO BACK", delegate
                    {

                        locationAlertFailure.Dispose();

                    });
                    locationAlertFailure.Show();
                }


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