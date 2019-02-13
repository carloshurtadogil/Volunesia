using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class WelcomeViewController : UIViewController
    {
        public string FirstName { get; set; }
        public WelcomeViewController (IntPtr handle) : base (handle)
        {
        }

        public void SetName(string name) 
        {
            //WelcomeLabel.Text = "Welcome, " + FirstName + "!";
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }
    }
}