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

        public EditText personalDescription { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            //Set VolunteerRegister view
            SetContentView(Resource.Layout.VolunteerRegister);

            personalDescription = FindViewById<EditText>(Resource.Id.personalDescriptionField);
            
            var registrationButton = FindViewById<Button>(Resource.Id.registerVolunteerButton);

            registrationButton.Click += PerformVolunteerRegistration;

            // Create your application here
        }

        public void PerformVolunteerRegistration(object sender, EventArgs e)
        {

        }
    }
}