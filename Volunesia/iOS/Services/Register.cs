using System;
using Foundation;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class Register
    {
        private bool CreateUserSuccess;
        private string UserUid;
        private UIViewController CurrentView;

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
            object[] keys = { "name", "type", "primarycontact", "phone", "zip" };
            //object[] vals = { name, type, primaryContactUID, phone, zip };
            object[] vals = { "Red Cross", "established", "12321291", "5625252525", "90808" };
            NSDictionary FirebaseUser = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.NonprofitNode.GetChild("1234321").SetValue(FirebaseUser);
        }

        public string CreateUser(string firstname, string lastname, string email, string password, string type, UIViewController view)
        {
            System.Diagnostics.Debug.WriteLine("Works");
            CurrentView = view;
            CreateUserSuccess = true;
            AppData_iOS.Auth.CreateUser(email,
                                         password,
                                         (user, error) => {
                                             if (error != null)
                                             {
                                                 System.Diagnostics.Debug.WriteLine("Error oc");
                                                 return;
                                             }
                                             System.Diagnostics.Debug.WriteLine("Reached: ");
                                             this.UserUid = user.User.Uid;
                                             AddUserToFirebase(firstname, lastname, email, UserUid, type);
                                         });
            return UserUid;
        }




        void HandleAuthDataResultHandler(Firebase.Auth.AuthDataResult authResult, NSError error)
        {
            if (error != null)
            {
                AlertShow.Show(CurrentView, "Error", "");
                return;
            }

            CreateUserSuccess = true;
            UserUid = authResult.User.Uid;
            AlertShow.Show(CurrentView, "User", UserUid);
        }


        void HandleAuthData(Firebase.Auth.AuthDataResult user, NSError error)
        {
            if (error != null)
            {
                AlertShow.Show(CurrentView, "Error", "");
                return;
            }

            CreateUserSuccess = true;
            UserUid = user.User.Uid;
            AlertShow.Show(CurrentView, "User", UserUid);
        }
    }
}
