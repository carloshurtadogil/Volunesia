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
        public Event Event { get; set; }


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
                //UserNameLabel.Text = u.FirstName + " " + u.LastName;
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
                    NewEventButton.Enabled = true;
                }
                else
                {
                    NewEventButton.Enabled = false; 
                }


            }

        }

        /// <summary>
        /// Start the event creation process
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void NewEventButton_TouchUpInside(UIButton sender)
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
            else if(segue.Identifier == "ToEventSegue_id")
            {
                var evc = (EventViewController)segue.DestinationViewController;
                if(evc != null)
                {
                    evc.EventDetails = Event;
                    evc.JustCreated = false;
                    evc.LoadView(); 
                }
            }
        }

        /// <summary>
        /// Show the profile details for the current user
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void ProfileButton_TouchUpInside(UIButton sender)
        {
            //Hide the previous items
            EventsTableView.Hidden = true;

            //Enable the new items and change the button images
            User u = AppData.CurUser;
            UserNameLabel.Text = u.FirstName + " " + u.LastName;
            MissionStatementTextview.Text = "Mission Statement is either queried or stored, but it will be shown here.";
            UserNameLabel.Hidden = false;
            MissionStatementLabel.Hidden = false;
            MissionStatementTextview.Hidden = false;
            ProfileImageView.Hidden = false;
            
            UIImage events = UIImage.FromFile("Images/EventButton.png");
            UIImage selectedProfile = UIImage.FromFile("Images/SelectedProfileButton.png");
            EventsButton.ImageView.Image = events;
            ProfileButton.ImageView.Image = selectedProfile;
        }


        /// <summary>
        /// Show all events that the user can work with
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void EventsButton_TouchUpInside(UIButton sender)
        {
            //Hide the previous items
            ProfileImageView.Hidden = true;
            UserNameLabel.Hidden = true;
            MissionStatementLabel.Hidden = true;
            MissionStatementTextview.Hidden = true;

            //Enable the new items and change the button images
            EventsTableView.Hidden = false;
            UIImage profile = UIImage.FromFile("Images/ProfileButton.png");
            UIImage selectedEvents = UIImage.FromFile("Images/SelectedEventButton.png");
            ProfileButton.ImageView.Image = profile;
            EventsButton.ImageView.Image = selectedEvents;
            AlertShow.Print("Name: "+ EventsButton.CurrentBackgroundImage.Images[0].ToString());

        }

        /// <summary>
        /// Allow the user to view their notifcations
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void NotificationButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "To be implemented", "");
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