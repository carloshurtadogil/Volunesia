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
            Register r = new Register();
            r.CreateNonprofitOrganization("Established", "Red Cross", "Charles", "563-564-4354", "90808");
            AlertShow.Show(this, "Established", "To be implemented");
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
    }
}