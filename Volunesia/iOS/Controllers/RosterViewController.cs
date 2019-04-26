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
            FirebaseReader.ReadRoster(AppData.NonprofitRepresentative.AssociatedNonprofit, EventDetails.EventID, AttendeesTableView);
        }

        /// <summary>
        /// Return to the previous controller
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }
    }
}