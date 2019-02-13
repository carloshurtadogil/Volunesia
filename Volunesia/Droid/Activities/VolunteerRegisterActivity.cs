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
    [Activity(Label = "VolunteerRegisterActivity")]
    public class VolunteerRegisterActivity : Activity
    {

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }

        public EditText personalDescription { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            //Set VolunteerRegister view
            SetContentView(Resource.Layout.VolunteerRegister);

            FirstName = Intent.GetStringExtra("firstName");
            LastName = Intent.GetStringExtra("lastName");
            EmailAddress = Intent.GetStringExtra("emailAddress");
            Password = Intent.GetStringExtra("password");



            personalDescription = FindViewById<EditText>(Resource.Id.personalDescriptionField);
            
            var registrationButton = FindViewById<Button>(Resource.Id.registerVolunteerButton);

            registrationButton.Click += PerformVolunteerRegistration;

            // Create your application here
        }

        public void PerformVolunteerRegistration(object sender, EventArgs e)
        {

            Dictionary<string, string> userDictionary = new Dictionary<string, string>();
            userDictionary.Add("email", EmailAddress);
            userDictionary.Add("first", FirstName);
            userDictionary.Add("last", LastName);
            userDictionary.Add("type", "Volunteer");

            //Get the uid of the currently logged in user
            string uid = AppData_Droid.Auth.CurrentUser.Uid;

            AppData_Droid.UserNode.Child(uid).PutAsync(userDictionary);
            StartActivity(typeof(WelcomeActivity));
        }
    }
}