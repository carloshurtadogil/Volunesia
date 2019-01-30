using System;
using Firebase.Auth;
using Firebase.Core;
using Firebase.Database;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class AppData_iOS
    {
        private static AppData_iOS Instance;
        public static DatabaseReference DataNode { get; set; }
        public static DatabaseReference UsersNode { get; set; }
        public static Auth auth;

        private AppData_iOS()
        {
            App.Configure();
            DataNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("data");
            UsersNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("users");
            auth = Auth.DefaultInstance;
        }

        public static AppData_iOS GetInstance()
        {
            AppData.GetInstance();
            if (Instance == null)
                Instance = new AppData_iOS();
            return Instance;
        }
    }
}
