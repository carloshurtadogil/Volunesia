using Foundation;
using System;
using System.Collections.Generic;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class WelcomeViewController : UIViewController
    {
        public User CurrUser { get; set; }
        public NonprofitRepresentative CurrRep { get; set; }

        public WelcomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            //FirebaseReader.ReadVolunteerHistory("SOWdh4LP2qUxMBRRMiQBtnuPLz83");
            //System.Threading.Thread.Sleep(1000);

            AppData_iOS.GetInstance();
            //FirebaseReader.ReadNonprofitEvents("fac19049-f4af-4bd4-868a-248f333cfe23");
            if (AppData.CurUser != null)
            {
                WelcomeLabel.Text = "Welcome, " + AppData.CurUser.FirstName + "!";
            }


            if (AppData.CurUser != null)
            {
                if (AppData.CurUser.UserType == "NP")
                {

                    if (AppData.CurUser.UID == "bN3e1pidRFgieI7LpmExF5bPmpo1")
                    {
                        DateTime d1 = Convert.ToDateTime("3/24/2019 11:59:00 AM");
                        DateTime d2 = Convert.ToDateTime("3/25/2019 08:00:00 AM");
                        DateTime d3 = Convert.ToDateTime("3/6/2019 11:19:00 AM");
                        Event e1 = new Event
                        {
                            ApplicationDeadline = d1,
                            Capacity = 20,
                            EventDate = d2,
                            EventDescription = "Hello",
                            EventName = "Recruiting Event",
                            EventImagePath = "/Images/nonprofiteventimages/ab9864d9-71db-4f09-9e12-db42fa7bdd36",
                            Poster = "bN3e1pidRFgieI7LpmExF5bPmpo1",
                            EventRoster = null,
                            Waitlist = null,
                            EventID = "28eee336-8437-442f-a458-d7fbaaae9c5e",
                            HostID = "fac19049-f4af-4bd4-868a-248f333cfe23"
                        };

                        Event e2 = new Event
                        {
                            ApplicationDeadline = d3,
                            Capacity = -1,
                            EventDate = d3,
                            EventDescription = "At the beach",
                            EventName = "Blood Drive",
                            EventImagePath = "/Images/nonprofiteventimages/ab9864d9-71db-4f09-9e12-db42fa7bdd36",
                            Poster = "bN3e1pidRFgieI7LpmExF5bPmpo1",
                            EventRoster = null,
                            Waitlist = null,
                            EventID = "ab9864d9-71db-4f09-9e12-db42fa7bdd36",
                            HostID = "fac19049-f4af-4bd4-868a-248f333cfe23"
                        };
                        AlertShow.Print("EventDate: " + e2.EventDate.ToLongDateString());
                        List<Event> list = new List<Event>();
                        list.Add(e1);
                        list.Add(e2);
                        AppData_iOS.NonprofitEvents = list;
                    }


                    this.PerformSegue("ToNPProfileSegue_id", this);
                }
                else
                {
                    this.PerformSegue("ToHomeSegue_id", this);
                }
            }
            else if (CurrUser != null)
            {
                AppData_iOS.GetInstance();
                if (CurrUser.UserType == "NP")
                {
                    this.PerformSegue("ToNPProfileSegue_id", this);
                }
                else if(CurrUser.UserType == "V")
                {
                    this.PerformSegue("ToHomeSegue_id", this);
                }
            }
            else
            {
                DismissViewController(true, () => { this.LoadView(); });
                System.Diagnostics.Debug.WriteLine("Null User");            
            }

        }


        public void SetName(string name) 
        {
            //WelcomeLabel.Text = "Welcome, " + FirstName + "!";
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToBaseSegue_id")
            {
                var vc = (ViewController)segue.DestinationViewController;
                if (vc != null)
                {
                    if(AppData.CurUser == null)
                    {
                        System.Diagnostics.Debug.WriteLine("Null user");
                    }
                    vc.LoadView();
                }
            }
            else if (segue.Identifier == "ToHomeSegue_id")
            {
                var hvc = (HomeViewController)segue.DestinationViewController;
                if (hvc != null)
                {
                    hvc.LoadView();
                }
            } 
            else if (segue.Identifier == "ToNPProfileSegue_id")
            {
                //FirebaseReader.ReadNonprofitEvents(AppData.NonprofitRepresentative.AssociatedNonprofit);
                var nppvc = (NPProfileViewController)segue.DestinationViewController;
                if(nppvc != null)
                {
                    nppvc.LoadView(); 
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Error", "LoginViewController");
            }

        }
    }
}