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
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid
{
    [Activity(Label = "VolunteerRegisterActivity")]
    public class VolunteerRegisterActivity : Activity
    {

        public User theUser { get; set; }

        public EditText personalDescription { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            //Set VolunteerRegister view
            SetContentView(Resource.Layout.VolunteerRegister);

            theUser = JsonConvert.DeserializeObject<User>(Intent.GetStringExtra("user"));



            personalDescription = FindViewById<EditText>(Resource.Id.personalDescriptionField);
            
            var registrationButton = FindViewById<Button>(Resource.Id.registerVolunteerButton);

            registrationButton.Click += PerformVolunteerRegistration;

            // Create your application here
        }

        public void PerformVolunteerRegistration(object sender, EventArgs e)
        {
    
            //Get the uid of the currently logged in user
            theUser.UID = AppData_Droid.Auth.CurrentUser.Uid;

            //Add the current user (nonprofit rep) to Firebase
            Register r = new Register();
            r.AddUserToFirebase(theUser);

            StartActivity(typeof(WelcomeActivity));
        }
    }
}