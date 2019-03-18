using System;
using System.Collections.Generic;
using Firebase.Auth;
using Firebase.Database;
using Foundation;
using Volunesia.Models;
using Volunesia.Services;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class FirebaseReader
    {

        /// <summary>
        /// Read user information from 'users' branch in Firebase
        /// </summary>
        /// <param name="results">Result handler from which to grab the user's uid.</param>
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
                        Volunesia.Models.User newuser = new Volunesia.Models.User
                        {
                            FirstName = first,
                            LastName = last,
                            EmailAddress = email,
                            UID = uid,
                            UserType = type,
                            PersonalStatement = personal
                        };
                        if (type == "NP")
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

        /// <summary>
        /// Read the nonprofit representatives
        /// </summary>
        /// <param name="npid">The nonprofit id needed to search for the nonprofit representative.</param>
        /// <param name="uid">The nonprofit representative's user id.</param>
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
                    var npname = data["associatednpname"].ToString();

                    Volunesia.Models.NonprofitRepresentative nprep = new Volunesia.Models.NonprofitRepresentative
                    {
                        UID = uid,
                        Position = position,
                        Poster = poster,
                        Reviewer = reviewer,
                        RepsManager = repsmanager,
                        AssociatedNonprofit = associatednp,
                        AssociatedNonprofitName = npname
                    };

                    AppData.NonprofitRepresentative = nprep;
                    ReadWrite.WriteNonprofitRepresentative();
                }
            });
        }

        /// <summary>
        /// Reads all events from Firebase that are currently happening or will happen.
        /// </summary>
        public static void ReadAllAvailableEvents()
        {
            List<Event> events = new List<Event>();
            AppData_iOS.GetInstance();
            var today = DateTime.Now;
            var children = AppData_iOS.EventNode.ObserveEvent(DataEventType.Value, (npsnapshot) => 
            {
                var nonprofits = npsnapshot.GetValue<NSDictionary>();
                foreach (var npid in nonprofits.Keys) 
                {
                    var npevents = (NSDictionary)nonprofits[npid.ToString()];
                    foreach (var eid in npevents.Keys)
                    {
                        var eventinfo = (NSDictionary)npevents[eid.ToString()];

                        var eventdate = Convert.ToDateTime(eventinfo["eventdate"].ToString());
                        
                        if(eventdate.Date >= today.Date) //Event is currently happening or will happen
                        {
                            AlertShow.Print(eid.ToString());
                            var applicationdeadline = Convert.ToDateTime(eventinfo["applicationdeadline"].ToString());
                            var hostid = npid.ToString();
                            var eventid = eid.ToString();
                            var eventimagepath = eventinfo["imagepath"].ToString();
                            var eventname = eventinfo["eventname"].ToString();
                            var eventdesc = eventinfo["eventdesc"].ToString();
                            var eventcaps = Convert.ToInt32(eventinfo["capacity"].ToString());
                            var poster = eventinfo["poster"].ToString();
                            var rostercheck = eventinfo["roster"].ToString();
                            var wlcounter = Convert.ToInt32(eventinfo["wlcounter"].ToString());
                            Roster roster = new Roster();
                            if (rostercheck != "0")
                            {

                                var volunteers = (NSDictionary)eventinfo["roster"];
                                foreach (var vid in volunteers.Keys)
                                {
                                    var volunteerinfo = (NSDictionary)volunteers[vid.ToString()];
                                    var attendedString = volunteerinfo["attended"].ToString();
                                    bool attended = false;
                                    var hourscompleted = Convert.ToInt32(volunteerinfo["hourscompleted"].ToString());
                                    var status = volunteerinfo["status"].ToString();

                                    if(attendedString == "Y") 
                                    {
                                        attended = true; 
                                    }

                                    Attendee attendee = new Attendee
                                    {
                                        UID = vid.ToString(),
                                        Attended = attended,
                                        HoursCompleted = hourscompleted,
                                        ReservationStatus = status
                                    };
                                    roster.Add(attendee);
                                }
                            }


                            Event @event = new Event
                            {
                                Poster = poster,
                                ApplicationDeadline = applicationdeadline,
                                EventDate = eventdate,
                                HostID = hostid,
                                EventID = eventid,
                                EventImagePath = eventimagepath,
                                EventName = eventname,
                                EventDescription = eventdesc,
                                EventRoster = roster,
                                Capacity = eventcaps
                            };
                            events.Add(@event);
                            AppData_iOS.CurrentEvents = events;

                        }
                        else
                        {
                            AlertShow.Print(eid.ToString() + " has past"); 
                        }


                    }
                }
            });
        }

        /// <summary>
        /// Read the Firebase data on all events hosted by a specific nonprofit
        /// </summary>
        /// <param name="npid">The nonprofit id to be used in the search process.</param>
        public static void ReadNonprofitEvents(string npid)
        {
            List<Event> events = new List<Event>();
            AppData_iOS.EventNode.GetChild(npid).ObserveEvent(DataEventType.Value,(snapshot) => 
            {
                var npevents = snapshot.GetValue<NSDictionary>();
                foreach(var eid in npevents.Keys) 
                {
                    var eventinfo = (NSDictionary)npevents[eid.ToString()];
                    var eventdate = Convert.ToDateTime(eventinfo["eventdate"].ToString());
                    var applicationdeadline = Convert.ToDateTime(eventinfo["applicationdeadline"].ToString());
                    var eventid = eid.ToString();
                    var eventimagepath = eventinfo["imagepath"].ToString();
                    var eventname = eventinfo["eventname"].ToString();
                    var eventdesc = eventinfo["eventdesc"].ToString();
                    var eventcaps = Convert.ToInt32(eventinfo["capacity"].ToString());
                    var poster = eventinfo["poster"].ToString();
                    var rostercheck = eventinfo["roster"].ToString();
                    var wlcounter = Convert.ToInt32(eventinfo["wlcounter"].ToString());
                    Roster roster = new Roster();
                    if (rostercheck != "0")
                    {

                        var volunteers = (NSDictionary)eventinfo["roster"];
                        foreach (var vid in volunteers.Keys)
                        {
                            var volunteerinfo = (NSDictionary)volunteers[vid.ToString()];
                            var attendedString = volunteerinfo["attended"].ToString();
                            bool attended = false;
                            var hourscompleted = Convert.ToInt32(volunteerinfo["hourscompleted"].ToString());
                            var status = volunteerinfo["status"].ToString();

                            if (attendedString == "Y")
                            {
                                attended = true;
                            }

                            Attendee attendee = new Attendee
                            {
                                UID = vid.ToString(),
                                Attended = attended,
                                HoursCompleted = hourscompleted,
                                ReservationStatus = status
                            };
                            roster.Add(attendee);
                        }
                    }

                    Event @event = new Event
                    {
                        Poster = poster,
                        ApplicationDeadline = applicationdeadline,
                        EventDate = eventdate,
                        HostID = npid,
                        EventID = eventid,
                        EventImagePath = eventimagepath,
                        EventName = eventname,
                        EventDescription = eventdesc,
                        EventRoster = roster,
                        Capacity = eventcaps
                    };
                    AppData_iOS.AddToNonprofitEvents(@event);
                }
            });
        }


        /// <summary>
        /// Read the volunteer history of a particular volunteer
        /// </summary>
        /// <param name="uid">The volunteer's user id.</param>
        public static void ReadVolunteerHistory(string uid)
        {
            VolunteerHistory history = new VolunteerHistory();
            AppData_iOS.GetInstance();
            var children = AppData_iOS.VolunteerHistoryNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                var events = snapshot.GetValue<NSDictionary>();
                if (events != null)
                {
                    System.Diagnostics.Debug.WriteLine("Count: " + events.Count);
                    var keys = events.Keys;
                    for (nuint i = 0; i < events.Count; i++)
                    {
                        string eventid = (NSString)keys[i];
                        AppData_iOS.VolunteerHistoryNode.GetChild(uid).GetChild(eventid).ObserveSingleEvent(DataEventType.Value, (snapshot1) =>
                        {
                            var data = snapshot1.GetValue<NSDictionary>();
                            if (data != null)
                            {
                                string attended = data["attended"].ToString();
                                string ed = data["eventdate"].ToString();
                                string eventname = data["eventname"].ToString();
                                string nonprofitid = data["nonprofitid"].ToString();
                                string nonprofitname = data["nonprofitname"].ToString();

                                DateTime date = DateTime.Parse(ed);
                                VolunteerEvent e = new VolunteerEvent
                                {
                                    Attended = attended,
                                    EventDate = date,
                                    EventID = eventid,
                                    EventName = eventname,
                                    NonprofitID = nonprofitid,
                                    NonprofitName = nonprofitname
                                };

                                history.AddEvent(e);
                                AppData.VolunteerHistory = history;
                                //ReadWrite.WriteVolunteerHistory();
                            }
                        });
                    }
                }
            });

        }

        /// <summary>
        /// Write event details to Firebase
        /// </summary>
        /// <param name="e">The new event to be recorded.</param>
        /// <param name="inpView">The InputViewController to add any message.</param>
        /// <param name="d">The image to be added if not standard.</param>
        public static void WriteEventDetails(Event e, EventInformationViewController inpView, NSData d)
        {
            //Add to locaL device
            if (AppData_iOS.NonprofitEvents == null)
            {
                AppData_iOS.NonprofitEvents = new List<Event>();

            }
            AppData_iOS.NonprofitEvents.Add(e);

            //Add to firebase
            object[] keys = { "applicationdeadline", "capacity", "eventdate", "eventname", "eventdesc","poster", "imagepath", "roster", "waitlist", "wlcounter", "wlid" };
            object[] vals = { e.ApplicationDeadline.ToString(), e.Capacity,  e.EventDate.ToString(), e.EventName, e.EventDescription, AppData.CurUser.UID, e.EventImagePath, 0, 0, 0, 0 };
            var newevent = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.EventNode.GetChild(e.HostID).GetChild(e.EventID).SetValue(newevent);
            if (!e.EventImagePath.Equals( "standard"))
            {
                FirebaseStorageServices.AddImageToFirebase(d, e.EventImagePath, inpView);
            }
            else
            {
                AlertShow.Show(inpView, true, "Event Created", "You are all set!");
            }

        }

        /// <summary>
        /// Update the email of the current user
        /// </summary>
        public static void WriteUserEmail()
        {
            AppData_iOS.GetInstance();
            Volunesia.Models.User user = AppData.CurUser;

            object[] key = { $"email" };
            object[] val = { user.EmailAddress };
            var emailupdate = NSDictionary.FromObjectsAndKeys(val, key);

            AppData_iOS.UsersNode.GetChild(user.UID).UpdateChildValues(emailupdate);

        }

    }
}
