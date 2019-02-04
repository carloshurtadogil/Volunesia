using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class RegistrationViewController : UIViewController
    {
        public RegistrationViewController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            ViewController vc = this.Storyboard.InstantiateViewController("BaseView") as ViewController;
            if (vc != null)
            {
                this.NavigationController.PushViewController(vc, true);
            }
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            UserTypeSelectionController utsc = this.Storyboard.InstantiateViewController("UserTypeSelectionController") as UserTypeSelectionController;
            if (utsc != null)
            {
                this.NavigationController.PushViewController(utsc, true);
            }
        }
    }
}