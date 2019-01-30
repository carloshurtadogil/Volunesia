using System;
using Firebase.Auth;
using Firebase.Core;
using Firebase.Database;
using Volunesia.VServices;

namespace Volunesia.iOS.VServices
{
    public class AppData_iOS
    {
        private static AppData_iOS Instance;
        //Reference to data node in Firebase
        public static DatabaseReference DataNode { get; set; }
        //Reference to user node in Firebase
        public static DatabaseReference UsersNode { get; set; }
        public static Auth CurrAuth;

        //Default instance of AppData for ios
        private AppData_iOS()
        {
            App.Configure();
            DataNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("data");
            UsersNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("users");
            CurrAuth = Auth.DefaultInstance;
        }

        //Retrieve instance of iOS app data
        public static AppData_iOS GetInstance()
        {
            AppData.GetInstance();
            if (Instance == null)
                Instance = new AppData_iOS();
            return Instance;
        }
    }
}
