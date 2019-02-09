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
            this.PerformSegue("LocalToInfoSegue_id", sender);
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            switch (segue.Identifier)
            {
                case "EstablishedToInfoSegue_id":
                    var enpvc = (EstablishedNonprofitViewController)segue.DestinationViewController;
                    if (enpvc != null)
                    {
                        enpvc.User = User;
                        enpvc.Password = Password;
                        enpvc.LoadView();
                    }

                    break;
                case "SchoolToInfoSegue_id":
                    var snpvc = (SchoolNPViewController)segue.DestinationViewController;
                    if (snpvc != null)
                    {
                        snpvc.User = User;
                        snpvc.Password = Password;
                        snpvc.LoadView();
                    }

                    break;
                case "LocalToInfoSegue_id":
                    var lnpvc = (LocalNPViewController)segue.DestinationViewController;
                    if (lnpvc != null)
                    {
                        lnpvc.User = User;
                        lnpvc.Password = Password;
                    }

                    break;
                default:
                    AlertShow.Show(this, "Segue Failure", "NPTypeSelectionController.cs");
                    break;
            }
        }


    }
}