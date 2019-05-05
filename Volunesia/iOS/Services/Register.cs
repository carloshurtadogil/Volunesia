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
        public void CreateUser( User NewUser, string Password, UIViewController view, NSData image, string segue_id)
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
                                             AppData_iOS.NonprofitEvents = null;
                                             IDGenerator iDGenerator = new IDGenerator();
                                             string id = "standard";
                                             if(image != null)
                                             {
                                                  id = iDGenerator.GenerateID(); ;
                                             }
                                             //Add nonprofit to nonprofits node
                                             if(NewUser.UserType == "NP" && NPType == "established")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("established reached");
                                                 CreateNonprofitOrganization(NewUser, NewUser.UID, view, id,  image, segue_id);
                                             }
                                             else if (NewUser.UserType == "NP" && NPType == "school")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("School Reached");
                                                 CreateSchoolOrganization(NewUser, NewUser.UID, view, id, image, segue_id);
                                             }
                                             else if (NewUser.UserType == "NP" && NPType == "local")
                                             {
                                                 System.Diagnostics.Debug.WriteLine("Local reached");
                                                 CreateLocalOrganization(NewUser, NewUser.UID, view, id, image, segue_id);
                                             } 
                                             else if(NewUser.UserType == "V") 
                                             {
                                                 AddUserToFirebase(NewUser, "null", view, image, id, segue_id);
                                             }

                                         });

        }

        //Add user information to Firebase.Database
        public void AddUserToFirebase(User user, string associatednp, UIViewController inpView, NSData image, string id, string segue_id)
        {
            if(user.UserType == "V")
            {
                AlertShow.Print("User is Volunteer");
                object[] keys = { "first", "last", "email", "type", "personalstatement", "associatednp" , "profileimg", "level", "xp"};
                object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType, MissionStatement, "NA", id, 1, 0 };

                NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
                AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
                AppData.CurUser = user;
                ReadWrite.WriteUser();
            }
            else
            {
                AlertShow.Print("User is Nonprofit Rep");
                object[] keys = { "first", "last", "email", "type", "personalstatement", "associatednp", "profileimg"};
                object[] vals = { user.FirstName, user.LastName, user.EmailAddress, user.UserType, "", associatednp, id, 1, 0 };

                NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
                AppData_iOS.UsersNode.GetChild(user.UID).SetValue(FirebaseUser);
                AlertShow.Print("Added new user with id: " + user.UID);
                AppData.CurUser = user;
                ReadWrite.WriteUser();
            }
            if(image != null)
            {
                string path = "/Images/profileimg/" + id;//"MSToWelcomeSegue_id"
                FirebaseStorageServices.AddImageToFirebase(image, path, inpView, segue_id);
            }
            else
            {
                inpView.PerformSegue(segue_id, inpView);
            }
        }


        /// <summary>
        /// Add nonprofit information to Firebase.Database
        /// </summary>
        /// <param name="user">User.</param>
        /// <param name="UID">Uid.</param>
        public void CreateNonprofitOrganization(User user, string UID, UIViewController inpView, string profileimg, NSData image, string segue_id)
        {
            IDGenerator generator = new IDGenerator();
            string id = generator.GenerateID();
            object[] keys = { "name", "type", "ein", "primarycontact", "primaryphone","zip", "city", "state", "missionstatement", "xp", "profileimg" };
            object[] vals = { NPName, NPType, EIN, UID, Phone, Zip, City, State, MissionStatement, 0, profileimg };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(id).SetValue(FirebaseUser);
            AlertShow.Print("Created new nonprofit with ID: " + id);
            CreateNonprofitRepresentative(UID, id);
            AddUserToFirebase(user, id, inpView, image, id, segue_id);//Add to User node

        }

        /// <summary>
        /// Add school nonprofit organization to firebase
        /// </summary>
        /// <param name="user">User.</param>
        /// <param name="UID">Uid.</param>
        public void CreateSchoolOrganization(User user, string UID, UIViewController inpView, string profileimg, NSData image, string segue_id)
        {
            IDGenerator generator = new IDGenerator();
            EIN = generator.GenerateID();

            object[] keys = { "name", "school","type", "primarycontact", "primaryphone", "zip", "city", "state", "missionstatement", "profileimg" };
            object[] vals = { NPName, School, NPType, UID, Phone, Zip, City, State , MissionStatement, profileimg};
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
            CreateNonprofitRepresentative(UID, EIN);
            AddUserToFirebase(user, EIN, inpView, image, EIN, segue_id);//Add to User node

        }

        //Add local nonprofit organization to firebase
        public void CreateLocalOrganization(User user, string UID, UIViewController inpView, string profileimg, NSData image, string segue_id)
        {
            IDGenerator generator = new IDGenerator();
            EIN = generator.GenerateID();

            object[] keys = { "name", "type", "primarycontact", "primaryphone", "zip", "city", "state", "missionstatement", "profileimg" };
            object[] vals = { NPName, NPType, UID, Phone, Zip, City, State, MissionStatement, profileimg };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild(EIN).SetValue(FirebaseUser);
            CreateNonprofitRepresentative(UID, EIN);
            AddUserToFirebase(user, EIN, inpView, image, EIN, segue_id);//Add to User node

        }

        /// <summary>
        /// Add nonprofit rep to firebase
        /// </summary>
        /// <param name="UID">Uid.</param>
        /// <param name="eid">Eid.</param>
        public void CreateNonprofitRepresentative(string UID, string eid) 
        {
            System.Diagnostics.Debug.WriteLine("Create Nonprofit Rep");
            NonprofitRepresentative rep = new NonprofitRepresentative 
            {
                Position = "mainuser",
                Poster = "Y",
                Reviewer = "Y",
                RepsManager = "Y",
                AssociatedNonprofitName = NPName, 
                AssociatedNonprofit = eid
            };
            object[] keys = { "position", "poster", "reviewer", "repsmanager", "associatednpname" };
            object[] vals = { rep.Position, rep.Poster, rep.Reviewer, rep.RepsManager, NPName};
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitRepNode.GetChild(eid).GetChild(UID).SetValue(FirebaseUser);
            AppData.NonprofitRepresentative = rep;
            ReadWrite.WriteNonprofitRepresentative();

        }

    }
}
