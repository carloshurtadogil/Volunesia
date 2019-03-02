﻿using System;
using Firebase.Auth;
using Firebase.Core;
using Firebase.Database;
using Firebase.Storage;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class AppData_iOS
    {
        private static AppData_iOS Instance; //Instance of this class to be referred to

        //Database references
        public static DatabaseReference DataNode                  { get; set; } //Reference to 'data' node in Firebase
        public static DatabaseReference UsersNode                 { get; set; } //Reference to 'users' node in Firebase
        public static DatabaseReference NonprofitNode             { get; set; } //Reference to 'nonprofitorgs' node in Firebase
        public static DatabaseReference NonprofitRepNode          { get; set; } //Reference to 'nonprofitreps' node in Firebase
        public static DatabaseReference VolunteerHistoryNode      { get; set; } //Reference to 'volunteerhistory node in Firebase'

        //Storage references
        public static StorageReference StorageRootReference   { get; set; } //Base reference to Storage

        public static Auth Auth; //Firebase authentication services (For creations and sign-ins)

        //Configure the nodes
        private AppData_iOS()
        {
            Firebase.Core.App.Configure();
            //Configure Database References
            DataNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("data");
            NonprofitNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("nonprofitorgs");
            UsersNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("users");
            NonprofitRepNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("nonprofitreps");
            VolunteerHistoryNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("volunteerhistory");

            //Configure Storage References
            StorageRootReference = Storage.DefaultInstance.GetRootReference();

            Auth = Auth.DefaultInstance;
        }

        //Initialize the class
        public static AppData_iOS GetInstance()
        {
            AppData.GetInstance();
            if (Instance == null)
                Instance = new AppData_iOS();
            return Instance;
        }
    }
}
