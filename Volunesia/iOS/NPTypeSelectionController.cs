using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class NPTypeSelectionController : UIViewController
    {
        public NPTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void EstablishedButton_TouchUpInside(UIButton sender)
        {
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