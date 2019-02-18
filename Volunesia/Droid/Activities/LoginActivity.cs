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
using Volunesia.Services;

namespace Volunesia.Droid
{
    [Activity(Label = "LoginActivity")]
    public class LoginActivity : Activity
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
            AppData_Droid.Auth.SignInWithEmailAndPassword(emailAddress.Text, password.Text);
        }
    }
}