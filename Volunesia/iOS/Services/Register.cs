﻿using System;
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
                                             AppData.CurUser = NewUser;//Make the new user the current user on the device

                                             
                                             //Add nonprofit to nonprofits node
                                             if(NewUser.UserType == "NP" && NPType == "established")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("established reached");
                                                 CreateNonprofitOrganization(NewUser, NewUser.UID);
                                             }
                                             else if (NewUser.UserType == "NP" && NPType == "school")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("School Reached");
                                                 CreateSchoolOrganization(NewUser, NewUser.UID); 
                                             }
                                             else if (NewUser.UserType == "NP" && NPType == "local")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("Local reached");
                                                 CreateLocalOrganization(NewUser, NewUser.UID);
                                             } 
                                             else if(NewUser.UserType == "V") 
                                             {
                                                 AddUserToFirebase(NewUser, "null");
                                             }
                                         });

        }

        //Add user information to Firebase.Database
        public void AddUserToFirebase(User user, string associatednp)
        {
            if(user.UserType == "V")
            {
                object[] keys = { "first", "last", "email", "type", "personalstatement", "associatednp" };
                object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType, MissionStatement, associatednp };

                NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
                AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
                AppData.CurUser = user;
                ReadWrite.WriteUser();
            }
            else
            {
                object[] keys = { "first", "last", "email", "type", "personalstatement", "associatednp" };
                object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType, "", associatednp };

                NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
                AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
                AppData.CurUser = user;
                ReadWrite.WriteUser();
            }
        }


        //Add nonprofit information to Firebase.Database
        public void CreateNonprofitOrganization(User user, string UID)
        {
            IDGenerator generator = new IDGenerator();
            string id = generator.GenerateID();
            object[] keys = { "name", "type", "ein", "primarycontact", "primaryphone","zip", "city", "state", "missionstatement" };
            object[] vals = { NPName, NPType, EIN, UID, Phone, Zip, City, State, MissionStatement };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(id).SetValue(FirebaseUser);
            AddUserToFirebase(user, id);//Add to User node
            CreateNonprofitRepresentative(UID, id);
        }

        //Add school nonprofit organization to firebase
        public void CreateSchoolOrganization(User user, string UID)
        {
            IDGenerator generator = new IDGenerator();
            EIN = generator.GenerateID();

            object[] keys = { "name", "school","type", "primarycontact", "primaryphone", "zip", "city", "state", "missionstatement" };
            object[] vals = { NPName, School, NPType, UID, Phone, Zip, City, State , MissionStatement};
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
            AddUserToFirebase(user, EIN);//Add to User node
            CreateNonprofitRepresentative(UID, EIN);
        }

        //Add local nonprofit organization to firebase
        public void CreateLocalOrganization(User user, string UID)
        {
            IDGenerator generator = new IDGenerator();
            EIN = generator.GenerateID();

            object[] keys = { "name", "type", "primarycontact", "primaryphone", "zip", "city", "state", "missionstatement" };
            object[] vals = { NPName, NPType, UID, Phone, Zip, City, State, MissionStatement };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
            AddUserToFirebase(user, EIN);//Add to User node
            CreateNonprofitRepresentative(UID, EIN);
        }

        //Add nonprofit rep to firebase
        public void CreateNonprofitRepresentative(string UID, string eid) 
        {
            System.Diagnostics.Debug.WriteLine("Create Nonprofit Rep");
            NonprofitRepresentative rep = new NonprofitRepresentative 
            {
                Position = "mainuser",
                Poster = "Y",
                Reviewer = "Y",
                RepsManager = "Y",
                AssociatedNonprofit = eid 
            };
            object[] keys = { "position", "poster", "reviewer", "repsmanager", "associatednp" };
            object[] vals = { rep.Position, rep.Poster, rep.Reviewer, rep.RepsManager, eid};
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitRepNode.GetChild(eid).GetChild(UID).SetValue(FirebaseUser);
            AppData.NonprofitRepresentative = rep;
            ReadWrite.WriteNonprofitRepresentative();

        }

    }
}
