using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class UserTypeSelectionController : UIViewController
    {
        public string FirstName { get; set; }
        public string LastName  { get; set; }
        public string Email     { get; set; }
        public string Password  { get; set; }

        public UserTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }
    }
}