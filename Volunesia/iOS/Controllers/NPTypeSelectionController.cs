using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class NPTypeSelectionController : UIViewController
    {
        public NPTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void EstablishedButton_TouchUpInside(UIButton sender)
        {
            //Register r = new Register();
            //r.CreateNonprofitOrganization("Established", "Red Cross", "Charles", "563-564-4354", "90808");
            //AlertShow.Show(this, "Established", "To be implemented");
            this.PerformSegue("EstablishedToInfoSegue_id", sender);
        }

        partial void SchoolButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "School", "To be implemented");
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

                    enpvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "NPTypeSelectionController.cs");
            }
        }


    }
}