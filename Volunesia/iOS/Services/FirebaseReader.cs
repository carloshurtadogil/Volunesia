using System;
using Firebase.Auth;
using Firebase.Database;
using Foundation;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class FirebaseReader
    {
        //Read user information from 'users' branch in Firebase
        public static void ReadUser(AuthDataResult results)
        {
            System.Diagnostics.Debug.WriteLine("Read USer Called");
            if (results != null)
            {
                AppData_iOS.GetInstance();
                AppData_iOS.UsersNode.GetChild(results.User.Uid).ObserveSingleEvent(DataEventType.Value, (snapshot) =>
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if (data != null)
                    {
                        var first = data["first"].ToString();
                        var last = data["last"].ToString();
                        var email = results.User.Email;
                        var uid = results.User.Uid;
                        var type = data["type"].ToString();
                        var personal = data["personalstatement"].ToString();
                        Models.User newuser = new Models.User
                        {
                            FirstName = first,
                            LastName = last,
                            EmailAddress = email,
                            UID = uid,
                            UserType = type,
                            PersonalStatement = personal
                        };
                        AppData.CurUser = newuser;
                        ReadWrite.WriteUser();
                        System.Diagnostics.Debug.WriteLine("Success");
                        newuser.UserDesc();
                    }
                    else
                    {
                        System.Diagnostics.Debug.WriteLine("Empty Data");
                    }
                });
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Results Fail");
            }
        }

        public static void WriteUserEmail() 
        {
            AppData_iOS.GetInstance();
            Models.User user = AppData.CurUser;

            object[] key = { $"email" };
            object[] val = { user.EmailAddress };
            var emailupdate = NSDictionary.FromObjectsAndKeys(val, key);

            AppData_iOS.UsersNode.GetChild(user.UID).UpdateChildValues(emailupdate);

        }
    }
}
