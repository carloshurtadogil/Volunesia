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
                            PersonalStatement = personal,
                        };
                        if (type == "NP")
                        {
                            System.Diagnostics.Debug.WriteLine("Reading NPReps");
                            ReadNPReps(associatednp, uid);
                        }
                        else
                        {
                            var level = Convert.ToInt32(data["level"].ToString());
                            var xp = Convert.ToInt32(data["xp"].ToString());
                            List<BadgeCategory.Badge> badges = new List<BadgeCategory.Badge>();
                            Volunesia.Models.Volunteer vol = new Volunesia.Models.Volunteer
                            {
                                Level = level,
                                Experience = xp,
                                BadgeList = badges
                            };
                            AppData.CurVolunteer = vol;
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
        /// Read any volunteer information not saved to the core user information
        /// </summary>
        /// <param name="uid">Uid.</param>
        public static void ReadVolunteer(string uid)
        {
            AppData_iOS.UsersNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) => 
            {
                if (snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if(data != null)
                    {
                        var personalstatement = data["personalstatement"].ToString();

                        AppData.CurUser.PersonalStatement = personalstatement;
                        AlertShow.Print("Current Personal Statement of user: " + uid + "\n     " + AppData.CurUser.PersonalStatement);
                        var level = Convert.ToInt32(data["level"].ToString());
                        var xp = Convert.ToInt32(data["xp"].ToString());
                        List<BadgeCategory.Badge> badges = new List<BadgeCategory.Badge>();
                        Volunteer vol = new Volunteer
                        {
                            Level = level,
                            Experience = xp,
                            BadgeList = badges
                        };
                        AppData.CurVolunteer = vol;
                    } 
                } 
            }); 
        }

        /// <summary>
        /// Reads a volunteer's information if the user is a nonprofit.
        /// </summary>
        /// <param name="uid">Uid.</param>
        /// <param name="inpView">Inp view.</param>
        public static void ReadVolunteerInformation(string uid, RosterViewController inpView)
        {
            AppData_iOS.UsersNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) => 
            {
                if(snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if(data != null)
                    {
                        var personalstatement = data["personalstatement"].ToString();
                        var image = data["profileimg"].ToString();
                        var firstname = data["first"].ToString();
                        var lastname = data["last"].ToString();
                        AlertShow.Print("Current Personal Statement of user: " + uid + "\n     " + AppData.CurUser.PersonalStatement);
                        var level = Convert.ToInt32(data["level"].ToString());
                        var xp = Convert.ToInt32(data["xp"].ToString());
                        List<BadgeCategory.Badge> badges = new List<BadgeCategory.Badge>();
                        Volunteer vol = new Volunteer
                        {
                            UID = uid,
                            Level = level,
                            Experience = xp,
                            BadgeList = badges,
                            PersonalStatement = personalstatement,
                            FirstName = firstname,
                            LastName = lastname
                        };

                        if(image == "standard")
                        {
                            inpView.Volunteer = vol;
                            inpView.PerformSegue("ToVolunteerFromNPSegue_id", inpView);
                        }
                        else
                        {
                            FirebaseStorageServices.RetrieveImage(image, inpView, vol); 
                        }

                    }
                    else
                    {
                        AlertShow.Print("FirebaseReader.ReadVolunteerInformation: data is null");
                    }
                }
                else
                {
                    AlertShow.Print("FirebaseReader.ReadVolunteerInformation: snapshot does not exist"); 
                } 
            }); 
        }

        public static void ReadPersonalStatement(string uid, UITextView textview)
        {
            AppData_iOS.UsersNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                if (snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if (data != null)
                    {
                        var personalstatement = data["personalstatement"].ToString();
                        textview.Text = personalstatement;
                    }
                }
            });
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
                if(snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if (data != null)
                    {
                        var position = data["position"].ToString();
                        var poster = data["poster"].ToString();
                        var reviewer = data["reviewer"].ToString();
                        var repsmanager = data["repsmanager"].ToString();
                        var npname = data["associatednpname"].ToString();

                        Volunesia.Models.NonprofitRepresentative nprep = new Volunesia.Models.NonprofitRepresentative
                        {
                            UID = uid,
                            Position = position,
                            Poster = poster,
                            Reviewer = reviewer,
                            RepsManager = repsmanager,
                            AssociatedNonprofit = npid,
                            AssociatedNonprofitName = npname
                        };

                        AppData.NonprofitRepresentative = nprep;
                        ReadWrite.WriteNonprofitRepresentative();
                    }
                }
                else
                {
                    AlertShow.Print("Null Snapshot: FirebaseReader.ReadNPReps()"); 
                }
            });
        }

        /// <summary>
        /// Change the reservation status of a user
        /// </summary>
        /// <param name="npid">ID of the nonprofit organization</param>
        /// <param name="eid">ID of the event</param>
        /// <param name="uid">ID of user whose reservation status is being changed</param>
        /// <param name="attendance">Attendance.</param>
        /// <param name="inpView">Inp view.</param>
        public static void ChangeReservationStatus(string npid, string eid, string uid, bool attendance, Roster roster, UIViewController inpView)
        {
            DateTime today = DateTime.Now;
            string date = "";
            string result = "N";
            if(attendance)
            {
                result = "Y";
                date = today.ToString();
            }

            //Update Roster
            object[] key = { $"attended", $"checkintime" };
            object[] val = { result, date };
            var update = NSDictionary.FromObjectsAndKeys(val, key);
            AppData_iOS.EventNode.GetChild(npid).GetChild(eid).GetChild("roster").GetChild(uid).UpdateChildValues(update);
            roster.RemoveDuplicates();

            //Update Volunteer History
            object[] akey = { $"attended" };
            object[] aval = { result };
            var vupdate = NSDictionary.FromObjectsAndKeys(aval, akey);
            AppData_iOS.VolunteerHistoryNode.GetChild(uid).GetChild(eid).UpdateChildValues(vupdate);

            if(!attendance)
            {
                AlertShow.Show(inpView, "Done", ""); 
            }
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

                        if (eventdate.Date >= today.Date) //Event is currently happening or will happen
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
                            var location = eventinfo["location"].ToString();
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
                                    var name = volunteerinfo["name"].ToString();

                                    if (attendedString == "Y")
                                    {
                                        attended = true;
                                    }

                                    Attendee attendee = new Attendee
                                    {
                                        UID = vid.ToString(),
                                        Attended = attended,
                                        HoursCompleted = hourscompleted,
                                        ReservationStatus = status,
                                        Name = name
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
                                Capacity = eventcaps,
                                Location = location
                            };
                            events.Add(@event);
                            AppData_iOS.CurrentEvents = events;

                        }
                        else
                        {
                            AlertShow.Print(eid.ToString() + " has past: " + eventdate);
                        }


                    }
                }
            });
        }

        /// <summary>
        /// Read the name of a nonprofit
        /// </summary>
        /// <param name="npid">Npid.</param>
        /// <param name="label">Label.</param>
        public static void ReadNPName(string npid, UILabel label)
        {
            AppData_iOS.NonprofitNode.GetChild(npid).ObserveEvent(DataEventType.Value,(snapshot) => 
            {
                if(snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if(data != null)
                    {
                        var name = data["name"].ToString();
                        label.Text = name;
                    } 
                } 
            });
        }

        /// <summary>
        /// Reads the roster of a particular event
        /// </summary>
        /// <param name="RosterView">Roster view.</param>
        public static void ReadRoster(string npid, string eid, UITableView RosterView, RosterViewController RosterVC)
        {
            Roster rosterlist = new Roster();
            AppData_iOS.EventNode.GetChild(npid).GetChild(eid).ObserveEvent(DataEventType.Value, (snapshot) => 
            {
                if(snapshot.Exists)
                {
                    var values = snapshot.GetValue<NSDictionary>();
                    if(values != null)
                    {
                        var rostercheck = values["roster"].ToString();
                        if (rostercheck != "0") 
                        {
                            AlertShow.Print("Reading Roster for event: " + eid );
                            var roster = (NSDictionary)values["roster"];
                            foreach(var key in roster.Keys)
                            {
                                var data = (NSDictionary)roster[key];
                                var userid = key.ToString();
                                var attended = data["attended"].ToString();
                                var dt = data["checkintime"].ToString();
                                var contact = data["contact"].ToString();
                                var hourscompleted = Convert.ToInt32(data["hourscompleted"].ToString());
                                var status = data["status"].ToString();
                                var name = data["name"].ToString();

                                bool attendedbool = false;
                                AlertShow.Print(data.ToString());
                                if(attended == "Y")
                                {
                                    attendedbool = true; 
                                }

                                Attendee attendee = new Attendee
                                {
                                    Attended = attendedbool,
                                    UID = userid,
                                    EmailAddress = contact,
                                    HoursCompleted = hourscompleted,
                                    ReservationStatus = status,
                                    Name = name 
                                };


                                DateTime checkintime;
                                if(DateTime.TryParse(dt, out checkintime))
                                {
                                    attendee.CheckInTime = checkintime;
                                }
                                //1/1/0001 12:00:00 AM is the default datetime since it is not nullable

                                rosterlist.Add(attendee);

                            }
                            RosterDataSource source = new RosterDataSource(rosterlist, RosterVC, eid);
                            RosterView.Source = source;
                            RosterView.ReloadData();
                        } 
                    } 
                } 
            });
        }


        /// <summary>
        /// Reads the mission statement for a specific nonprofit.
        /// </summary>
        /// <param name="npid">The nonprofit id to be used for the search.</param>
        /// <param name="textview">the textview to be populated.</param>
        public static void ReadMissionStatement(string npid, UITextView textview)
        {
            AppData_iOS.NonprofitNode.GetChild(npid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                if(snapshot.Exists)
                {
                    var values = snapshot.GetValue<NSDictionary>();
                    if(values != null)
                    {
                        string missionstatement = values["missionstatement"].ToString().Trim();
                        if (missionstatement.Length > 0)
                        {
                            textview.Text = missionstatement;
                        }
                    }
                    else
                    {
                        AlertShow.Print("Values are null"); 
                    }
                }
                else
                {
                    AlertShow.Print("Snapshot does not exist"); 
                }

            });
        }

        /// <summary>
        /// Read the Firebase data on all events hosted by a specific nonprofit
        /// </summary>
        /// <param name="npid">The nonprofit id to be used in the search process.</param>
        public static void ReadNonprofitEvents(string npid)
        {
            AlertShow.Print("Reading the events of: " + npid);
            List<Event> events = new List<Event>();
            AppData_iOS.EventNode.GetChild(npid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                if(snapshot.Exists) 
                {
                    var npevents = snapshot.GetValue<NSDictionary>();
                    if(npevents != null)
                    {
                        AlertShow.Print("Successfully captured dictionary");
                        foreach (var eid in npevents.Keys)
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
                            var location = eventinfo["location"].ToString();
                            
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
                                Capacity = eventcaps,
                                Location = location
                            };
                            AlertShow.Print("About to add event to nonprofit events");
                            AppData_iOS.AddToNonprofitEvents(@event);
                        }
                    }
                }
                else
                {
                     
                }
            });
        }

        /// <summary>
        /// Read the email of the primary contact for a nonprofit organization
        /// </summary>
        /// <param name="npid">The id of the nonprofit organization.</param>
        /// <param name="label">The UILabel to be updated.</param>
        public static void ReadContactEmail(string npid, UILabel label)
        {
            AlertShow.Print("ReadingContactEmail for nonprofit: " + npid);
            AppData_iOS.NonprofitNode.GetChild(npid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                if(snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if (data != null)
                    {
                        var primarycontact = data["primarycontact"].ToString();
                        AppData_iOS.UsersNode.GetChild(primarycontact).ObserveEvent(DataEventType.Value, (snapshot2) =>
                        {
                            if(snapshot2.Exists)
                            {
                                var data2 = snapshot2.GetValue<NSDictionary>();
                                if(data2 != null)
                                {
                                    var email = data2["email"].ToString();
                                    label.Text = email;
                                }
                                else
                                {
                                    AlertShow.Print("FirebaseReader.ReadContactEmail: Empty Data2");
                                }
                            }
                            else
                            {
                                AlertShow.Print("FirebaseReader.ReadContactEmail: Null snapshot2");
                            }
                        });
                    }
                    else
                    {
                        AlertShow.Print("FirebaseReader.ReadContactEmail has null value");
                    }
                }
                else
                {
                    AlertShow.Print("FirebaseReader.ReadContactEmail: Null snapshot"); 
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
            VolunteerHistory future = new VolunteerHistory();

            AppData_iOS.GetInstance();

            var children = AppData_iOS.VolunteerHistoryNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                if(snapshot.Exists) 
                {
                    var events = snapshot.GetValue<NSDictionary>();
                    if (events != null)
                    {

                        System.Diagnostics.Debug.WriteLine("Count: " + events.Count);
                        var keys = events.Keys;
                        double hours = 0.0;
                        foreach (var key in events.Keys)
                        {
                            AlertShow.Print("Event Found Under Current User: " + key.ToString());
                            var data = (NSDictionary)events[key];

                            if (data != null)
                            {
                                var attended = data["attended"].ToString();
                                var ed = data["eventdate"].ToString();
                                var eventname = data["eventname"].ToString();
                                var eid = key.ToString();
                                var hourscompleted = Convert.ToDouble(data["hoursvolunteered"].ToString());
                                var nonprofitid = data["nonprofitid"].ToString();
                                var nonprofitname = data["nonprofitname"].ToString();

                                DateTime date = DateTime.Parse(ed);
                                DateTime now = DateTime.Now;

                                VolunteerEvent e = new VolunteerEvent
                                {
                                    Attended = attended,
                                    EventDate = date,
                                    EventID = eid,
                                    EventName = eventname,
                                    HoursCompleted = hourscompleted,
                                    NonprofitID = nonprofitid,
                                    NonprofitName = nonprofitname
                                };

                                hours += hourscompleted;

                                int result = DateTime.Compare(date, now);
                                if (result <= 0)//past event
                                {
                                    AlertShow.Print("Past: " + e.EventID);
                                    history.AddEvent(e);
                                    AppData.VolunteerHistory = history;
                                }
                                else //future event
                                {
                                    AlertShow.Print("Future: " + e.EventID);
                                    future.AddEvent(e);
                                    AppData.FutureEvents = future;
                                }
                            }
                        }

                        LevelUp lu = new LevelUp();
                        AlertShow.Print("Current Hours: " + hours);
                        //lu.CheckIfUserCanLevelUp(AppData.CurVolunteer, hours);
                    }
                }
            },
            (error) => 
            {
                AlertShow.Print("No Prior History to Report"); 
            });

        }


        /// <summary>
        /// Read a specific event to be loaded for a volunteer's user experience
        /// </summary>
        /// <param name="npid">ID of nonprofit.</param>
        /// <param name="eid">ID of event.</param>
        /// <param name="HomeController">Home controller.</param>
        /// <param name="attended">Determine if event is upcoming or has past</param>
        public static void ReadEvent(string npid, string eid, UIViewController HomeController, bool attended) 
        {
            AppData_iOS.EventNode.GetChild(npid).GetChild(eid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                var data = snapshot.GetValue<NSDictionary>();
                if(data != null) 
                {
                    var imagepath = data["imagepath"].ToString();
                    var eventname = data["eventname"].ToString();
                    var eventdate = Convert.ToDateTime(data["eventdate"].ToString());
                    var eventdescription = data["eventdesc"].ToString();
                    var location = data["location"].ToString();
                    Event e = new Event
                    {
                        EventName = eventname,
                        EventDate = eventdate,
                        EventDescription = eventdescription,
                        EventImagePath = imagepath,
                        EventID = eid,
                        HostID = npid,
                        Location = location
                    };
                    HomeViewController homeView = (HomeViewController)HomeController;
                    homeView.SelectedEvent = e;
                    homeView.Attended = attended;
                    homeView.PerformSegue("ToEventsFromHome_id", HomeController);
                }
            }); 
        }

        /// <summary>
        /// Remove a specific event from Firebase
        /// </summary>
        /// <param name="npid">The nonprofit id.</param>
        /// <param name="eid">The event id.</param>
        public static void RemoveEvent(string npid, string eid)
        {
            DatabaseReference reference = AppData_iOS.EventNode.GetChild(npid).GetChild(eid);
            reference.RemoveValue();
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
            DateTime enddate = e.EventDate.AddHours(2);
            //Add to firebase
            object[] keys = { "applicationdeadline", "capacity", "eventdate", "eventname", "eventdesc", "poster", "imagepath", "roster", "waitlist", "wlcounter", "wlid", "location", "eventenddate" };
            object[] vals = { e.ApplicationDeadline.ToString(), e.Capacity, e.EventDate.ToString(), e.EventName, e.EventDescription, AppData.CurUser.UID, e.EventImagePath, 0, 0, 0, 0, e.Location, enddate.ToString() };
            var newevent = NSDictionary.FromObjectsAndKeys(vals, keys);
            AppData_iOS.EventNode.GetChild(e.HostID).GetChild(e.EventID).SetValue(newevent);
            if (!e.EventImagePath.Equals("standard"))
            {
                FirebaseStorageServices.AddImageToFirebase(d, e.EventImagePath, inpView);
            }
            inpView.PerformSegue("ToCreatedEventSegue_id", inpView);

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

        /// <summary>
        /// Write a new user to the roster of an event
        /// </summary>
        /// <param name="npid">The nonprofit id for an event.</param>
        /// <param name="eid">The event id.</param>
        /// <param name="uid">The id of the user to be added.</param>
        public static void WriteToRoster(UIViewController inpView, string npid, string eid, Models.User vol)
        {

            AppData_iOS.EventNode.GetChild(npid).GetChild(eid).ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                var data = snapshot.GetValue<NSDictionary>();
                var uname = vol.FirstName + " " + vol.LastName;
                object[] keys = { "attended", "checkintime", "contact","hourscompleted", "status", "name" };
                object[] vals = { "N", "00", vol.EmailAddress, 0, "Will Attend", uname };
                var urosteritem = NSDictionary.FromObjectsAndKeys(vals, keys);

                var roster = data["roster"].ToString();
                int val;
                if (int.TryParse(roster, out val))
                {
                    object[] key = { vol.UID };
                    object[] value = { urosteritem };
                    var rosteritem = NSDictionary.FromObjectsAndKeys(value, key);
                    AppData_iOS.EventNode.GetChild(npid).GetChild(eid).GetChild("roster").SetValue(rosteritem);
                }
                else
                {
                    AppData_iOS.EventNode.GetChild(npid).GetChild(eid).GetChild("roster").GetChild(vol.UID).SetValue(urosteritem);
                }
                if (AppData.CurUser.UserType == "V")
                {
                    var applicationdeadline = Convert.ToDateTime(data["applicationdeadline"].ToString());
                    var capacity = Convert.ToInt32(data["capacity"].ToString());
                    var eventdate = Convert.ToDateTime(data["eventdate"].ToString());
                    var eventdesc = data["eventdesc"].ToString();
                    var eventname = data["eventname"].ToString();
                    var imagepath = data["imagepath"].ToString();

                    Event e = new Event
                    {
                        ApplicationDeadline = applicationdeadline,
                        Capacity = capacity,
                        EventID = eid,
                        EventDate = eventdate,
                        EventName = eventname,
                        EventDescription = eventdesc,
                        HostID = npid,
                        EventImagePath = imagepath

                    };
                    AppData_iOS.AddToVolunteerFutureEvents(e);
                    AppData_iOS.NonprofitNode.GetChild(npid).ObserveEvent(DataEventType.Value,(snapshot1) => 
                    {
                        var hostdata = snapshot1.GetValue<NSDictionary>();
                        var nname = hostdata["name"].ToString();
                        object[] key = { "attended", "eventdate", "eventname", "hoursvolunteered", "nonprofitid", "nonprofitname" };
                        object[] value = { "N", e.EventDate.ToString(), e.EventName, 0, e.HostID, nname };
                        var eventdetails = NSDictionary.FromObjectsAndKeys(value, key);
                        AppData_iOS.VolunteerHistoryNode.GetChild(vol.UID).GetChild(eid).SetValue(eventdetails);

                        VolunteerEvent ve = new VolunteerEvent
                        {
                            Attended = "N",
                            EventDate = e.EventDate,
                            EventName = e.EventName,
                            EventID = eid,
                            NonprofitID = e.HostID,
                            NonprofitName = nname,
                            HoursCompleted = 0 
                        };
                    });
                }

                AlertShow.Show(inpView, "Congratulations", "You are one step closer to making the world a better place. Please keep in mind the date of the event and lookout for any new changes.");
            });
        }

        public static void CheckVolunteerHistory(string uid, string eid, UIButton signup, UIButton leave) 
        {
            AppData_iOS.VolunteerHistoryNode.GetChild(uid).ObserveEvent(DataEventType.Value,(snapshot) => 
            {
                if (snapshot.Exists) 
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if (data != null)
                    {
                        bool found = false;
                        foreach (var ekey in data.Keys)
                        {
                            AlertShow.Print("Event: " + ekey.ToString());
                            if (ekey.ToString().Equals(eid))
                            {
                                found = true;//Keep the signup button
                                var eventinfo = (NSDictionary)data[eid];
                                var attended = eventinfo["attended"].ToString();
                                var eventdate = Convert.ToDateTime(eventinfo["eventdate"].ToString());
                                var today = DateTime.Now;
                                if (attended.Equals("N") || (today < eventdate))
                                {
                                    signup.Enabled = false;
                                    signup.Hidden = true;
                                    leave.Enabled = true;
                                    leave.Hidden = false;
                                }
                            }
                            if (!found)
                            {

                            }
                        }
                    }
                }
            });
        }

        /// <summary>
        /// Remove a volunteer from a Roster
        /// </summary>
        /// <param name="npid">The nonprofit id for an event.</param>
        /// <param name="eid">The event id.</param>
        /// <param name="uid">The id of the user to be added.</param>
        public static void RemoveFromRoster(string npid, string eid, string uid)
        {

            AppData_iOS.EventNode.GetChild(npid).GetChild(eid).GetChild("roster").ObserveEvent(DataEventType.Value, (snapshot) =>
            {
                if (snapshot.ChildrenCount > 1) //Simple removal
                {
                    DatabaseReference reference = AppData_iOS.EventNode.GetChild(npid).GetChild(eid).GetChild("roster").GetChild(uid);
                    reference.RemoveValue();
                }
                else //Set the value of "roster" to 0 to indicate that no volunteer is going to attend the event
                {
                    NSNumber n = 0;
                    AppData_iOS.EventNode.GetChild(npid).GetChild(eid).GetChild("roster").SetValue(n);
                }
            });
        }

        /// <summary>
        /// Removes from volunteer history.
        /// </summary>
        /// <param name="uid">User's id.</param>
        /// <param name="eid">ID of the event to be removed.</param>
        public static void RemoveFromVolunteerHistory(string uid, string eid) 
        {
            DatabaseReference reference = AppData_iOS.VolunteerHistoryNode.GetChild(uid).GetChild(eid);
            reference.RemoveValue();
            //AppData.FutureEvents.RemoveVolunteerEvent(eid);
        }

        public static void Test(UIViewController inpView, string uid, string email) 
        {
            Models.User v = new Models.User 
            {
                UID = uid,
                EmailAddress = email
            };
            WriteToRoster(inpView, "fac19049-f4af-4bd4-868a-248f333cfe23", "cd807087-6887-4caf-b9f6-4993d8060fce", v);
        }

        /// <summary>
        /// Reads the nonprofit information.
        /// </summary>
        /// <param name="evc">Evc.</param>
        /// <param name="npid">Npid.</param>
        public static void ReadNonprofitInformation(EventViewController evc, string npid)
        {
            AppData_iOS.NonprofitNode.GetChild(npid).ObserveEvent(DataEventType.Value,(snapshot) => 
            { 
                if(snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if(data != null)
                    {
                        var city = data["city"].ToString();
                        var name = data["name"].ToString();
                        var missionstmt = data["missionstatement"].ToString();
                        var phone = data["primaryphone"].ToString().Replace("-", "").Trim();
                        var state = data["state"].ToString();
                        var zip = data["zip"].ToString();
                        var imagepath = data["profileimg"].ToString();

                        Nonprofit nonprofit = new Nonprofit
                        {
                            City = city,
                            NonprofitName = name,
                            MissionStatement = missionstmt,
                            DefaultPhone = phone,
                            State = state,
                            ZipCode = zip,
                            ImagePath = imagepath
                        };
                        evc.Nonprofit = nonprofit;
                        if(imagepath == "standard")
                        {
                            evc.PerformSegue("ToNPProfileSegue_id", evc);
                        }
                        else
                        {
                            //TODO Load image before loading np profile 
                        }
                    } 
                }
            }); 
        }

        public static void ReadAssociatedNonprofit(string uid) 
        {
            AppData_iOS.UsersNode.GetChild(uid).ObserveEvent(DataEventType.Value, (snapshot) => 
            {
                if(snapshot != null) 
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if(data != null)
                    {
                        var associatednp = data["associatednp"].ToString();
                        AppData.NonprofitRepresentative.AssociatedNonprofit = associatednp;
                        ReadNonprofitEvents(associatednp); 
                    } 
                }
            });
        }

        public static void WriteNewAttribute() 
        {
            AppData_iOS.EventNode.ObserveEvent(DataEventType.Value, (snapshot) => 
            {
                if(snapshot.Exists)
                {
                    var data = snapshot.GetValue<NSDictionary>();
                    if(data != null)
                    {
                        foreach(var npid in data.Keys)
                        {
                            AlertShow.Print("NPID: " + npid);
                            var events = (NSDictionary)data[npid.ToString()]; 
                            if(events != null)
                            {
                                foreach(var eid in events.Keys)
                                {
                                    NSString std = (Foundation.NSString)"3150 East 29th Street, Long Beach, CA 90806";
                                    AppData_iOS.EventNode.GetChild(npid.ToString()).GetChild(eid.ToString()).GetChild("location").SetValue(std);
                                } 
                            }
                        }
                        /*
                        foreach(var key in data.Keys)
                        {
                            NSString std = (Foundation.NSString)"standard";
                            AppData_iOS.NonprofitNode.GetChild(key.ToString()).GetChild("profileimg").SetValue(std);
                        }                       
                        */

                    }

                } 
            }); 
        }

    }
}
