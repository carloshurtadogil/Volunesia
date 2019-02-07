using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class WelcomeViewController : UIViewController
    {

        public WelcomeViewController (IntPtr handle) : base (handle)
        {
        }

        public void SetName(string name) 
        {
            WelcomeLabel.Text = "Welcome " + name + "!";
        }

    }
}