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
    [Activity(Label = "VolunteerRegisterActivity")]
    public class VolunteerRegisterActivity : Activity
    {

        public EditText username { get; set; }
        public EditText emailAddress { get; set; }
        public EditText password { get; set; }
        public EditText confirmPassword { get; set; }
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            //Set VolunteerRegister view
            SetContentView(Resource.Layout.VolunteerRegister);

            username = FindViewById<EditText>(Resource.Id.usernameField);
            emailAddress = FindViewById<EditText>(Resource.Id.emailAddressField);

            password = FindViewById<EditText>(Resource.Id.passwordField);
            confirmPassword = FindViewById<EditText>(Resource.Id.confirmPasswordField);


            var registrationButton = FindViewById<Button>(Resource.Id.registerVolunteerButton);

            registrationButton.Click += PerformVolunteerRegistration;

            // Create your application here
        }

        public void PerformVolunteerRegistration(object sender, EventArgs e)
        {
            CredentialsVerification credVerification = new CredentialsVerification();
            if(credVerification.CheckIfPasswordsMatch(password.Text, confirmPassword.Text))
            {
                
            }
        }


        


    }
}