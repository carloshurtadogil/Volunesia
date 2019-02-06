using Android.App;
using Android.Widget;
using Android.OS;
using System.Collections.Generic;
using Firebase.Database.Query;
using System;

namespace Volunesia.Droid
{
    [Activity(Label = "Volunesia", MainLauncher = true, Icon = "@mipmap/icon")]
    public class MainActivity : Activity
    {
        int count = 1;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            // Get our button from the layout resource,
            // and attach an event to it
            Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
            Button signUpButton = FindViewById<Button>(Resource.Id.signupButton);

            loginButton.Click += NavigateToLoginPage;
            signUpButton.Click += NavigateToSignupPage;

            //AppData_Droid.GetInstance(this);
            //FirebaseTest();
        }

        //Navigates to the the login page
        public void NavigateToLoginPage(object sender, EventArgs e)
        {
            //StartActivity(typeof(MainLoginActivity));
        }

        //Navigates to the sign up page
        public void NavigateToSignupPage(object sender, EventArgs e)
        {
            StartActivity(typeof(MainRegisterActivity));
        }

        void FirebaseTest ()
        {
            AppData_Droid.Auth.CreateUserWithEmailAndPassword("carlos.droidtest@volunesia.com",
                                                              "tester.1234");

            Dictionary<string, string> myTestDict = new Dictionary<string, string>();
            myTestDict.Add("key", "value");

            AppData_Droid.DataNode.Child("Test").PutAsync(myTestDict);
        }

    }
}

