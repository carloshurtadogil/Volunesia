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
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using Volunesia.Droid.Activities;
using Volunesia.Models;
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

            AppData_Droid.Auth.SignInWithEmailAndPassword(emailAddress.Text, password.Text).AddOnCompleteListener(this, this);




            //try
            //{
            //    AppData_Droid.Auth.SignInWithEmailAndPassword(emailAddress.Text, password.Text).AddOnCompleteListener(this, this);
            //    if (result != null)
            //    {
                    
            //        ppData_Droid.UserNode.Child(result.User.Uid).OrderBy(result.User.Uid).LimitToFirst(1).OnceAsync<User>();


            //        var resultant = appropriateUser.
            //        if (resultant.Count() == 1)
            //        {
            //            var retrievedUser = new User();


            //            foreach (var theUser in resultant)
            //            {
            //                retrievedUser.EmailAddress = theUser.Object.EmailAddress;
            //                retrievedUser.FirstName = theUser.Object.FirstName;
            //                retrievedUser.LastName = theUser.Object.LastName;
            //                retrievedUser.UserType = theUser.Object.UserType;
            //                retrievedUser.UID = theUser.Key;
            //            }
            //            if (retrievedUser.UserType.Equals("V"))
            //            {
            //                AppData.CurUser = retrievedUser;
            //                var volunteerIntent = new Intent(this, typeof(VolunteerHomeActivity));
            //                StartActivity(volunteerIntent);
            //            }
            //            else if (retrievedUser.UserType.Equals("NP"))
            //            {
            //                AppData.CurUser = retrievedUser;
            //                //var npIntent = new Intent(this, typeof(NonprofitHomeActivity));
            //                //StartActivity(npIntent);
            //            }


            //        }
            //    }
            //    else
            //    {
            //        AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
            //        dialogAlertConstruction.SetTitle("Authentication failure");
            //        dialogAlertConstruction.SetMessage("Email and/or password are incorrect.");
            //        dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
            //        {

            //            dialogAlertConstruction.Dispose();

            //        });
            //        dialogAlertConstruction.Show();

            //    }

            //}
            //catch (Exception exce)
            //{
            //    Console.WriteLine(exce.StackTrace);
            //}




        }
            
        public void OnComplete(Task task)
        {
            if (task.IsSuccessful)
            {
                Console.WriteLine(AppData_Droid.Auth.CurrentUser.Uid);

                StartActivity(typeof(WelcomeActivity));
            }
        }
    }
 }

