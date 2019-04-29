using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class RosterViewController : UIViewController
    {
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
    }
}