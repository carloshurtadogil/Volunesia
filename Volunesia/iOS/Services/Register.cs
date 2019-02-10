using System;
using Foundation;
using UIKit;
using Volunesia.Services;
using Volunesia.Models;

namespace Volunesia.iOS.Services
{
    public class Register
    {
        public string NPType { get; set; }
        public string EIN    { get; set; }
        public string NPName { get; set; }
        public string Zip    { get; set; }
        public string School { get; set; }
        public string City   { get; set; }
        public string State  { get; set; }
        public string Phone  { get; set; }
        public string MissionStatement { get; set; }

        private UIViewController CurrentView;

        public Register()
        {
            AppData_iOS.GetInstance();
        }

        //Create a new User account in Firebase 
        public void CreateUser( User NewUser, string Password, UIViewController view )
        {
            CurrentView = view;
            AppData_iOS.Auth.CreateUser( NewUser.EmailAddress,
                                         Password,
                                         (user, error) => {
                                             if (error != null)
                                             {
                                                 AlertShow.Show(view, "Create Error", "Register.CreateUser");
                                                 return;
                                             }
                                             NewUser.UID = user.User.Uid;
                                             AppData.CurUser = NewUser;

                                             AddUserToFirebase(NewUser);
                                             if(NewUser.UserType == "NP" && NPType == "established")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("established reached");
                                                 CreateNonprofitOrganization(NewUser.UID);
                                             }
                                             else if (NewUser.UserType == "NP" && NPType == "school")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("School Reached");
                                                 CreateSchoolOrganization(NewUser.UID); 
                                             }
                                             else if (NewUser.UserType == "NP" && NPType == "local")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("Local reached");
                                                 CreateLocalOrganization(NewUser.UID);
                                             }
                                         });

        }

        //Add user information to Firebase.Database
        public void AddUserToFirebase(User user)
        {
            if(user.UserType == "V")
            {
                object[] keys = { "first", "last", "email", "type", "personalstatement"};
                object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType, MissionStatement };

                NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
                AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
                AppData.CurUser = user;
            }
            else
            {
                object[] keys = { "first", "last", "email", "type" };
                object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType };

                NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
                AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
                AppData.CurUser = user;
            }
        }


        //Add nonprofit information to Firebase.Database
        public void CreateNonprofitOrganization(string UID)
        {
            IDGenerator generator = new IDGenerator();
            string id = generator.GenerateID();
            object[] keys = { "name", "type", "ein", "primarycontact", "primaryphone","zip", "city", "state", "missionstatement" };
            object[] vals = { NPName, NPType, EIN, UID, Phone, Zip, City, State, MissionStatement };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(id).SetValue(FirebaseUser);
        }

        public void CreateSchoolOrganization(string UID)
        {
            IDGenerator generator = new IDGenerator();
            EIN = generator.GenerateID();

            object[] keys = { "name", "school","type", "primarycontact", "primaryphone", "zip", "city", "state", "missionstatement" };
            object[] vals = { NPName, School, NPType, UID, Phone, Zip, City, State , MissionStatement};
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
        }

        public void CreateLocalOrganization(string UID)
        {
            IDGenerator generator = new IDGenerator();
            EIN = generator.GenerateID();

            object[] keys = { "name", "type", "primarycontact", "primaryphone", "zip", "city", "state", "missionstatement" };
            object[] vals = { NPName, NPType, UID, Phone, Zip, City, State, MissionStatement };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
        }

    }
}
