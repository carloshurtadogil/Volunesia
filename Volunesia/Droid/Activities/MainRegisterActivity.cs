using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Gms.Tasks;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Firebase.Database.Query;
using Volunesia.Models;

namespace Volunesia.Droid
{
    [Activity(Label = "MainRegisterActivity")]
    public class MainRegisterActivity : Activity
    {
        public EditText firstName { get; set; }
        public EditText lastName { get; set; }



        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.MainRegister);
            
            firstName = FindViewById<EditText>(Resource.Id.firstnameField);
            lastName = FindViewById<EditText>(Resource.Id.lastnameField);
      
            Button continueWithRegistrationButton = FindViewById<Button>(Resource.Id.continueWithRegistrationButton);

            continueWithRegistrationButton.Click += ContinueWithRegistration;
        }

        public void ContinueWithRegistration(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(firstName.Text) && !string.IsNullOrEmpty(lastName.Text))
            {
                var intent = new Intent(this, typeof(SecondRegisterActivity));
                intent.PutExtra("firstName", firstName.Text);
                intent.PutExtra("lastName", lastName.Text);
                StartActivity(intent);
            }
        }


    }
}