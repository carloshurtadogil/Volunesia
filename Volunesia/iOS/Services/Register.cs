﻿using System;
using Foundation;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class Register
    {
        public Register()
        {
            AppData_iOS.GetInstance();
        }

        public void AddUserToFirebase(string firstname, string lastname, string email, string UID, string type)
        {
            firstname = firstname.Trim();
            lastname = lastname.Trim();
            email = email.Trim();
            object[] keys = { "first", "last", "email", "type" };
            object[] vals = { firstname, lastname, email, type };

            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.UsersNode.GetChild(UID).SetValue(FirebaseUser);
        }

        public void CreateNonprofitOrganization(string type, string name, string primaryContactUID, string phone, string zip)
        {
            object[] keys = { "name", "type", "primarycontact", "phone", "zip"  };
            //object[] vals = { name, type, primaryContactUID, phone, zip };
            object[] vals = { "Red Cross", "established", "12321291", "5625252525", "90808" };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild("1234321").SetValue(FirebaseUser);
        }

        public bool CreateNonprofitUser(string firstname, string lastname, string email, string password, UIViewController view)
        {
            bool success = true;
            AppData_iOS.Auth.CreateUser(email,
                                         password,
                                         (user, error) => {
                                             if (error != null)
                                             {
                                                 AlertShow.Show(view, "Error", "");
                                                 return;
                                             }
                                             success = true;
                                         });
            if (success == true)
            {
                AddUserToFirebase(firstname, lastname, email, AppData_iOS.Auth.CurrentUser.Uid, "NP");
            }
            else
            {
                AlertShow.Show(view, "Failure", "");
            }
            return success;
        }
    }
}
