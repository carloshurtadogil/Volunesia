using Android.App;
using Android.Widget;
using Android.OS;
using System.Collections.Generic;
using Firebase.Database.Query;

namespace Volunesia.Droid
{
    [Activity(Label = "Volunesia",  MainLauncher = true, Icon = "@mipmap/icon")]
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
            Button button = FindViewById<Button>(Resource.Id.myButton);

            button.Click += delegate { button.Text = $"{count++} clicks!"; };

            AppData_Droid.GetInstance(this);
            FirebaseTest();
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

