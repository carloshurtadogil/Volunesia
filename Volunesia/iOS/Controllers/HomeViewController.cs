using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class HomeViewController : UIViewController
    {
        public Event SelectedEvent { get; set; }
        public bool Attended { get; set; }

        public HomeViewController (IntPtr handle) : base (handle)
        {
        }

        /// <summary>
        /// Override and reload Data
        /// </summary>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public override void ViewDidAppear(bool animated)
        {
            AlertShow.Print("VDA");
            base.ViewDidAppear(animated);
            AppData_iOS.GetInstance();
            FirebaseReader.ReadVolunteerHistory(AppData.CurUser.UID);
            if(AppData.CurUser != null)
            {
                NameLabel.Text = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
                if(AppData.CurUser.UserType != "V")
                {
                    //AddButton.Hidden = false; 
                }
                System.Diagnostics.Debug.WriteLine("User Type: " + AppData.CurUser.UserType);
            }
            LoadEventData(1);//Initial list that the user should see
            EventsTableView.ReloadData();
        }

        /// <summary>
        /// Prepares for segue depending on certain button clicks
        /// </summary>
        /// <param name="segue">Segue.</param>
        /// <param name="sender">Sender.</param>
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "ToSettingsSegue_id")
            {
                var svc = (SettingsViewController)segue.DestinationViewController;
                if(svc != null)
                {
                    svc.LoadView(); 
                }
            }
            else if (segue.Identifier == "ToEventsFromHome_id")
            {
                var evc = (EventViewController)segue.DestinationViewController;
                if(evc != null) 
                {
                    evc.EventDetails = SelectedEvent;
                    evc.JustCreated = false;
                    evc.Attended = Attended;
                    evc.LoadView(); 
                }
            }
            else if (segue.Identifier == "ToVolunteerProfileSegue_id")
            {
                var vpvc = (VolunteerProfileViewController)segue.DestinationViewController;
                if(vpvc != null)
                {
                    vpvc.LoadView(); 
                } 
            }
        }

        /// <summary>
        /// Go to the volunteer;s profile page
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void ProfileButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToVolunteerProfileSegue_id", sender);
        }

        /// <summary>
        /// Settingses the button touch up inside.
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToSettingsSegue_id", sender);
        }

        /// <summary>
        /// Display all events that the user has participated in the past
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void PastButton_TouchUpInside(UIButton sender)
        {
            if (AppData.VolunteerHistory != null && AppData.VolunteerHistory.Size() > 0) 
            {
                LoadEventData(0);
            }
            else
            {
                AlertShow.Show(this, "No Past Available", "We encourage you to sign up for events"); 
            }
        }

        /// <summary>
        /// Display all events that the user can sign up for
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void PresentButton_TouchUpInside(UIButton sender)
        {
            LoadEventData(1);
        }

        partial void FutureButton_TouchUpInside(UIButton sender)
        {
            if(AppData.FutureEvents != null && AppData.FutureEvents.Size() > 0) 
            {
                LoadEventData(2);
            }
            else
            {
                AlertShow.Show(this, "No Upcoming Events In Your List", "We encourage you to sign up for events"); 
            }
        }
        // Load specific event data depending on which button was clicked
        // 0 for Past Data
        // 1 for Present Data
        // 2 for Future Data
        public void LoadEventData(int type)
        {
            if(type == 0) //Past data
            {
                AlertShow.Print("Past Data");
                PastEventsDataSource sdc = new PastEventsDataSource(this);
                EventsTableView.Source = sdc;
            }
            else if(type == 1) //Present Data
            {
                AlertShow.Print("Current Data");
                AllCurrentEventsDataSource sdc = new AllCurrentEventsDataSource(this);
                EventsTableView.Source = sdc;
            }
            else if(type == 2) //Future Data
            {
                AlertShow.Print("Future Data");
                FutureEventDataSource sdc = new FutureEventDataSource(this);
                EventsTableView.Source = sdc; 
            }
            EventsTableView.ReloadData();
        }


    }
}