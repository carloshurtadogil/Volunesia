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
                StartActivity(typeof(SecondRegisterActivity));
            }
        }

        

        public void OnComplete(Task task)
        {
            //If Firebase authentication works, then navigate to the RegisterActivity to select
            //choice as a volunteer or nonprofit
            if(task.IsSuccessful == true)
            {
                StartActivity(typeof(RegisterActivity));
            }
            //if authentication, doesn't work notify the user through an AlertDialog
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Authentication failure");
                dialogAlertConstruction.SetMessage("Email entered is already in use");

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                }   );
                dialogAlertConstruction.Show();
            }
        }
    }
}