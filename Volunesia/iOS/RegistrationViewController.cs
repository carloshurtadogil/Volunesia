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
            this.DismissViewController(true, null);
        }

        partial void VolunteerBtn_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "Volunteer", "To be added");
        }

        partial void NonprofitBtn_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "Nonprofit", "To be added");
        }
    }
}