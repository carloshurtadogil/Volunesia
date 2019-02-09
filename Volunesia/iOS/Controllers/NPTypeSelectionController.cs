using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class NPTypeSelectionController : UIViewController
    {
        public User   User      { get; set; }
        public string Password  { get; set; }


        public NPTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void EstablishedButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("EstablishedToInfoSegue_id", sender);
        }

        partial void SchoolButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("SchoolToInfoSegue_id", sender);
        }

        partial void LocalButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "Local", "To be implemented");
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "EstablishedToInfoSegue_id")
            {
                var enpvc = (EstablishedNonprofitViewController)segue.DestinationViewController;
                if (enpvc != null)
                {
                    enpvc.User = User;
                    enpvc.Password  = Password;
                    enpvc.LoadView();
                }
            }
            else if (segue.Identifier == "SchoolToInfoSegue_id")
            {
                var snpvc = (SchoolNPViewController)segue.DestinationViewController;
                if (snpvc != null)
                {
                    snpvc.User = User;
                    snpvc.Password = Password;
                    snpvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "NPTypeSelectionController.cs");
            }
        }


    }
}