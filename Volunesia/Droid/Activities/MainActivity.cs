using Android.App;
using Android.Widget;
using Android.OS;
using System.Collections.Generic;
using Firebase.Database.Query;
using System;
using Volunesia.Services;
using Volunesia.Droid.Activities;
using Android.Graphics;

namespace Volunesia.Droid
{
    [Activity(Label = "Volunesia", MainLauncher = true, Icon = "@mipmap/icon")]
    public class MainActivity : Activity
    {

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            AppData_Droid.GetInstance(this);
            ReadWrite.ReadUser();
            if (AppData.CurUser != null)
            {
                if(AppData.CurUser.UserType.Equals("V"))
                {
                    StartActivity(typeof(VolunteerEventsActivity));
                }
                else if(AppData.CurUser.UserType.Equals("NP"))
                {
                    StartActivity(typeof(NonprofitHomeActivity));
                }
            }
            else
            {
                // Set our view from the "main" layout resource
                SetContentView(Resource.Layout.Main);

                // Get our button from the layout resource,
                // and attach an event to it
                Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
                Button signUpButton = FindViewById<Button>(Resource.Id.signupButton);

                //ImageView volunesiaImage = FindViewById<ImageView>(Resource.Id.volunesiaLogoImage);
                //Bitmap bitmap = BitmapFactory.DecodeResource(this.Resources, Resource.Mipmap.Icon);
                //Bitmap drawableBitmap = bitmap.Copy(Bitmap.Config.Argb8888, true);
                //Canvas canvas = new Canvas(drawableBitmap);
                //Paint paint = new Paint();
                //paint.Color = Color.Black;
                //paint.TextSize = 12;
                //paint.TextAlign = Paint.Align.Center;
                
                //canvas.DrawText("Main man right here", canvas.Width/2, canvas.Height/2, paint);

                //volunesiaImage.SetImageBitmap(drawableBitmap);

                loginButton.Click += NavigateToLoginPage;
                signUpButton.Click += NavigateToSignupPage;

                //AppData_Droid.GetInstance(this);
                //FirebaseTest();
            }


        }

        //Navigates to the the login page
        public void NavigateToLoginPage(object sender, EventArgs e)
        {
            StartActivity(typeof(LoginActivity));
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

