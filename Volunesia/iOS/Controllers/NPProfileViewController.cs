using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;
using Volunesia.iOS.Services;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Volunesia.iOS
{
    public partial class NPProfileViewController : UIViewController
    {

        //Global variables
        private bool useRefreshControl = false;
        private UIRefreshControl RefreshControl;



        public NPProfileViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            if (AppData.CurUser != null)
            {
                AlertShow.Print("View Did Appear");

                User u = AppData.CurUser;
                UserNameLabel.Text = u.FirstName + " " + u.LastName;
                NameLabel.Text = AppData.NonprofitRepresentative.AssociatedNonprofitName;



                if (AppData_iOS.NonprofitEvents != null)
                {
                    //AllEventsDataSource sdc = new AllEventsDataSource(this, true);
                    //EventsTableView.Source = sdc;
                    //EventsTableView.ReloadData();
                    AddRefreshControl();
                    EventsTableView.Add(RefreshControl);
                }
                else
                {
                    AlertShow.Print("Empty list"); 
                }
                if (AppData.NonprofitRepresentative.Poster == "Y")
                {
                    AddButton.Enabled = true;
                }
                else
                {
                    AddButton.Enabled = false; 
                }


            }

        }

        //Start the event creation process
        partial void AddButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToEventCreationSegue_id", sender);
        }

        //Continue to the settings view controller
        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToNPRSettingsSegue_id", sender);
        }


        //Prepare to move to the next view controller
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            if( segue.Identifier == "ToNPRSettingsSegue_id" )
            {
                var svc = (SettingsViewController)segue.DestinationViewController;
                if(svc != null)
                {
                    svc.LoadView(); 
                }
            }
            else if( segue.Identifier == "ToEventCreationSegue_id")
            {
                var eivc = (EventInformationViewController)segue.DestinationViewController;
                if(eivc != null)
                {
                    eivc.LoadView(); 
                }
            }
        }

        async Task RefreshAsync()
        {
            //only active the refresh control if the feature is available
            if (useRefreshControl)
            {
                RefreshControl.BeginRefreshing();
                FirebaseReader.ReadNonprofitEvents(AppData.NonprofitRepresentative.AssociatedNonprofit);
            }
            if (useRefreshControl) 
            {

                AllEventsDataSource sdc = new AllEventsDataSource(this, true);
                EventsTableView.Source = sdc;
                RefreshControl.EndRefreshing();
                EventsTableView.ReloadData(); 
            }
        }

        void AddRefreshControl()
        {
            if (UIDevice.CurrentDevice.CheckSystemVersion(6, 0))
            {
                // the refresh control is available. let's add it
                RefreshControl = new UIRefreshControl();
                RefreshControl.ValueChanged += async (sender, e) => 
                {
                    AlertShow.Print("Pulled");

                    await RefreshAsync();

                };
                useRefreshControl = true;
            }
        }
    }
}