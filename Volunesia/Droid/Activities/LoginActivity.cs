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
using FireSharp;
using FireSharp.Response;
using FireSharp.Interfaces;
using FireSharp.Config;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;

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

        }
            
        public void OnComplete(Task task)
        {
            //Checks if login task has been successfully completed
            if (task.IsSuccessful)
            {
                
                try
                {
                    var someTask = System.Threading.Tasks.Task.Run(async () => {

                        return await RetrieveLoggedUser();

                    });
                    var Result = someTask.Result; // use returned result from async method here
                    
                    //Parse the JObject and retrieve the components of the response
                    var jsonObject = JObject.Parse(Result);
                    var firstName = jsonObject["first"];
                    var lastName = jsonObject["last"];
                    var email = jsonObject["email"];

                    //Set the following components to their respective fields of the User
                    User loggedUser = new User()
                    {
                        EmailAddress = email.ToString(),
                        FirstName = firstName.ToString(),
                        LastName = lastName.ToString(),
                        UserType = jsonObject["type"].ToString(),
                        UID = AppData_Droid.Auth.CurrentUser.Uid
                        

                    };

                    //Go to the Volunteer home activity if the user is a volunteer
                    if (loggedUser.UserType.Equals("V"))
                    {
                        AppData.CurUser = loggedUser;
                        StartActivity(typeof(VolunteerEventsActivity));
                    }
                    //Go to the Nonprofit Home activity if the user is a nonprofit rep
                    else if (loggedUser.UserType.Equals("NP"))
                    {
                        AppData.CurUser = loggedUser;
                        if(jsonObject["associatednp"].ToString() != "NA" || jsonObject["associatednp"].ToString() != null)
                        {
                            AppData.NonprofitRepresentative = new NonprofitRepresentative();
                            AppData.NonprofitRepresentative.UID = loggedUser.UID;
                            AppData.NonprofitRepresentative.AssociatedNonprofit = jsonObject["associatednp"].ToString();

                            var newTask = System.Threading.Tasks.Task.Run(async () => {

                                return await RetrieveAssociatedNPInfo();

                            });
                            var associatedNPDetails = newTask.Result;

                            var associatedNPJsonObject = JObject.Parse(associatedNPDetails);
                            AppData.NonprofitRepresentative.AssociatedNonprofitName = associatedNPJsonObject["associatednpname"].ToString();
                            AppData.NonprofitRepresentative.Position = associatedNPJsonObject["postion"].ToString();
                            AppData.NonprofitRepresentative.Poster = associatedNPJsonObject["poster"].ToString();
                            AppData.NonprofitRepresentative.RepsManager = associatedNPJsonObject["repsmanager"].ToString();
                            AppData.NonprofitRepresentative.Reviewer = associatedNPJsonObject["reviewer"].ToString();
                        }
                        StartActivity(typeof(NonprofitProfileViewActivity));
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.InnerException);
                }
            }
            //Else, alert the user of the login failure through an AlertDialog
            else
            {
                AlertDialog.Builder dialogAlertConstruction = new AlertDialog.Builder(this);
                dialogAlertConstruction.SetTitle("Login Error");
                dialogAlertConstruction.SetMessage("Incorrect login credentials entered");

                dialogAlertConstruction.SetPositiveButton("GO BACK", delegate
                {

                    dialogAlertConstruction.Dispose();

                });
                dialogAlertConstruction.Show();
            }


               
            }


        public async System.Threading.Tasks.Task<String> RetrieveLoggedUser()
        {
            IFirebaseConfig config = new FirebaseConfig
            {
                AuthSecret = "bjv4kn9YGRYWkib6d1TmWSLHCwUZvasjiFK7ovQX",
                BasePath = "https://volunesia-f5475.firebaseio.com"
            };

            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Retrieve the user 
            FirebaseResponse response = await firebaseClient.GetAsync("users/" + AppData_Droid.Auth.CurrentUser.Uid);

            string resultant = response.Body;

            return resultant;
        }

        public async System.Threading.Tasks.Task<String> RetrieveAssociatedNPInfo()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Retrieve the user 
            FirebaseResponse response = await firebaseClient.GetAsync("nonprofitreps/" + AppData.NonprofitRepresentative.AssociatedNonprofit
                                                                                       + "/" 
                                                                                       + AppData.NonprofitRepresentative.UID);

            string resultant = response.Body;

            return resultant;
        }
    }

        


    }
 

