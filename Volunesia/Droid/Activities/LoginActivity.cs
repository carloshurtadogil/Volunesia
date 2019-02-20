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
using Volunesia.Droid.Activities;
using Volunesia.Services;

namespace Volunesia.Droid
{
    [Activity(Label = "LoginActivity")]
    public class LoginActivity : Activity, IOnCompleteListener
    {
        public EditText emailAddress { get; set; }
        public EditText password { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Login);

            //Get email and password from user.
            emailAddress = FindViewById<EditText>(Resource.Id.emailAddressField);
            password = FindViewById<EditText>(Resource.Id.passwordField);

            Button loginButton = FindViewById<Button>(Resource.Id.loginButton);

            loginButton.Click += LoginUser;
        }

        public void LoginUser(object sender, EventArgs e)
        {
            AppData_Droid.GetInstance(this);
            AppData_Droid.Auth.SignInWithEmailAndPassword(emailAddress.Text, password.Text).AddOnCompleteListener(this, this);
        }

        public void OnComplete(Task task)
        {
            if(task.IsSuccessful == true)
            {
                Console.WriteLine("Task Successful");
                var intent = new Intent(this, typeof(VolunteerHomeActivity));
                StartActivity(intent);
            }
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Authentication failure");
                dialogAlertConstruction.SetMessage("Email and/or password are incorrect.");
            }
        }
    }
}