using Android.Content;
using Firebase;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using Volunesia.Services;

namespace Volunesia.Droid
{
    public class AppData_Droid
    {
        private static AppData_Droid Instance;

        public static ChildQuery DataNode;
        public static ChildQuery UserNode;

        static FirebaseApp FireApp;
        public static FirebaseAuth Auth;

        private AppData_Droid(Context inpContext)
        {
            var options = new Firebase.FirebaseOptions.Builder().SetApplicationId("1:150742742704:android:8ba862549549e95a")
                                                                .SetApiKey("AIzaSyB7zaYR2NxWq62j6OR12FAL0dJBmFFFqEQ")
                                                                .Build();

            if (FireApp == null)
            {
                FireApp = FirebaseApp.InitializeApp(inpContext, options);
            }

            Auth = FirebaseAuth.GetInstance(FireApp);

            string FirebaseURL = "https://volunesia-f5475.firebaseio.com";

            FirebaseClient rootNode = new FirebaseClient(FirebaseURL);
            DataNode = rootNode.Child("data");
            UserNode = rootNode.Child("users");
        }

        public static AppData_Droid GetInstance(Context inpContext)
        {
            AppData.GetInstance();
            if (Instance == null)
            {
                Instance = new AppData_Droid(inpContext);
            }
            return Instance;
        }


    }
}