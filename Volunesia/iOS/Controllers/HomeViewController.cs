using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class HomeViewController : UIViewController
    {
        public HomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            AppData_iOS.GetInstance();
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
        }

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
        }

        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToSettingsSegue_id", sender);
        }

        partial void AddButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "To be implemented", "");
        }

        //Display all events that the user has participated in the past
        partial void PastButton_TouchUpInside(UIButton sender)
        {
            if (AppData.VolunteerHistory != null && AppData.VolunteerHistory.Size() > 0) 
            {
                LoadEventData(0);
            }
            else
            {
                AlertShow.Show(this, "No Past Available", "Not enough data exists"); 
            }
        }

        partial void PresentButton_TouchUpInside(UIButton sender)
        {
            LoadEventData(1);
        }

        partial void FutureButton_TouchUpInside(UIButton sender)
        {
            LoadEventData(2);
        }
        // Load specific event data depending on which button was clicked
        // 0 for Past Data
        // 1 for Present Data
        // 2 for Future Data
        public void LoadEventData(int type)
        {
            if(type == 0) //Past data
            {
                PastEventsDataSource sdc = new PastEventsDataSource(this);
                EventsTableView.Source = sdc;
            }
            else if(type == 1) //Present Data
            {
                AllEventsDataSource sdc = new AllEventsDataSource(this);
                EventsTableView.Source = sdc;
            }
            else if(type == 2) //Future Data
            {
                FutureEventDataSource sdc = new FutureEventDataSource(this);
                EventsTableView.Source = sdc; 
            }
            EventsTableView.ReloadData();
        }


    }
}