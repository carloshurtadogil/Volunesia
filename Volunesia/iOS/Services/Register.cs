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
        public string City   { get; set; }
        public string State  { get; set; }

        private UIViewController CurrentView;

        public Register()
        {
            AppData_iOS.GetInstance();
        }


        //Create a new User account in Firebase 
        public void CreateUser( User NewUser, string Password, UIViewController view)
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
                                             if(NewUser.UserType == "NP")
                                             {
                                                 CreateNonprofitOrganization(NewUser.UID);
                                             }
                                         });

        }

        //Add user information to Firebase.Database
        public void AddUserToFirebase(User user)
        {
            object[] keys = { "first", "last", "email", "type" };
            object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType};

            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
            AppData.CurUser = user;
        }


        //Add nonprofit information to Firebase.Database
        public void CreateNonprofitOrganization(string UID)
        {
            object[] keys = { "name", "type", "primarycontact", "zip", "city", "state" };
            object[] vals = { NPName, NPType, UID, Zip, City, State };
            //object[] vals = { "Red Cross", "established", "12321291", "5625252525", "90808" };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
        }

    }
}
