using Foundation;
using System;
using System.Threading.Tasks;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class RosterViewController : UIViewController
    {
        private bool useRefreshControl = false;
        private UIRefreshControl RefreshControl;

        public Event EventDetails { get; set; }
        public Volunteer Volunteer { get; set; }
        public UIImage Image { get; set; }
        public RosterViewController (IntPtr handle) : base (handle)
        {
        }

        /// <summary>
        /// Load any information to display to the current user
        /// </summary>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            EventLabel.Text = EventDetails.EventName;
            FirebaseReader.ReadRoster(AppData.NonprofitRepresentative.AssociatedNonprofit, EventDetails.EventID, AttendeesTableView, this);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "ToVolunteerFromNPSegue_id")
            {
                var vpvc = (VolunteerProfileViewController)segue.DestinationViewController;
                if (vpvc != null)
                {
                    vpvc.Volunteer = Volunteer;
                    vpvc.Image = Image;
                    vpvc.LoadView(); 
                }
            }
        }

        /// <summary>
        /// Return to the previous controller
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        /// <summary>
        /// Return the table view to be reloaded
        /// </summary>
        /// <returns>The table view.</returns>
        public UITableView GetTableView()
        {
            return AttendeesTableView; 
        }

#pragma warning disable CS1998 // Async method lacks 'await' operators and will run synchronously
        async Task RefreshAsync()
#pragma warning restore CS1998 // Async method lacks 'await' operators and will run synchronously
        {
            //only active the refresh control if the feature is available 
            if (useRefreshControl)
            {
                RefreshControl.BeginRefreshing();
                FirebaseReader.ReadNonprofitEvents(AppData.NonprofitRepresentative.AssociatedNonprofit);
            }
            if (useRefreshControl)
            {
                /*
                RosterDataSource rdc = new RosterDataSource();
                EventsTableView.Source = sdc;
                RefreshControl.EndRefreshing();
                EventsTableView.ReloadData();*/
            }
        }

    }
}