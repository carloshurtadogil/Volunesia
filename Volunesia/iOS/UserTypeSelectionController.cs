using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class UserTypeSelectionController : UIViewController
    {
        public UserTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }
    }
}