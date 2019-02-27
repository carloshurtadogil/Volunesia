using System;
using System.Collections.Generic;
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
            System.Diagnostics.Debug.WriteLine("Read User Called");
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
                        var associatednp = data["associatednp"].ToString();
                        Models.User newuser = new Models.User
                        {
                            FirstName = first,
                            LastName = last,
                            EmailAddress = email,
                            UID = uid,
                            UserType = type,
                            PersonalStatement = personal
                        };
                        if(type == "NP") 
                        {
                            System.Diagnostics.Debug.WriteLine("Reading NPReps");
                            ReadNPReps(associatednp, uid);
                        }
                        AppData.CurUser = newuser;
                        ReadWrite.WriteUser();
                        System.Diagnostics.Debug.WriteLine("Success");
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

        public static void ReadNPReps(string npid, string uid) 
        {
            System.Diagnostics.Debug.WriteLine("ReadNPReps called");
            AppData_iOS.GetInstance();
            AppData_iOS.NonprofitRepNode.GetChild(npid).GetChild(uid).ObserveSingleEvent(DataEventType.Value, (snapshot) =>
            {
                var data = snapshot.GetValue<NSDictionary>();
                if (data != null)
                {
                    var position = data["position"].ToString();
                    var poster = data["poster"].ToString();
                    var reviewer = data["reviewer"].ToString();
                    var repsmanager = data["repsmanager"].ToString();
                    var associatednp = data["associatednp"].ToString();

                    Models.NonprofitRepresentative nprep = new Models.NonprofitRepresentative
                    {
                        UID = uid,
                        Position = position,
                        Poster = poster,
                        Reviewer = reviewer,
                        RepsManager = repsmanager,
                        AssociatedNonprofit = associatednp
                    };

                    AppData.NonprofitRepresentative = nprep;
                    ReadWrite.WriteNonprofitRepresentative();
                }
            });
        }

        public static void ReadVolunteerHistory(string uid) 
        {
            AppData_iOS.GetInstance();
            var children = AppData_iOS.VolunteerHistoryNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) => 
            {
                var events = snapshot.GetValue<NSDictionary>();
                if(events != null) 
                {
                    System.Diagnostics.Debug.WriteLine("Count: " + events.Count);
                    var keys = events.Keys;
                    for(nuint i = 0; i < events.Count; i++) 
                    {
                        string eventid = (NSString)keys[i];
                        AppData_iOS.VolunteerHistoryNode.GetChild(uid).GetChild(eventid).ObserveSingleEvent(DataEventType.Value, (snapshot1) => 
                        {
                            var data = snapshot1.GetValue<NSDictionary>();
                            if(data != null)
                            {
                                string attended = data["attended"].ToString();
                                string hours = data["hours"].ToString();
                                System.Diagnostics.Debug.WriteLine("Event ID: " + eventid);
                                System.Diagnostics.Debug.WriteLine("\tAttended: " + attended);
                                System.Diagnostics.Debug.WriteLine("\tHours: " + hours);
                            }
                        });
                    }
                }
            });

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
