using Foundation;
using System;
using UIKit;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class WelcomeViewController : UIViewController
    {
        public WelcomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            System.Diagnostics.Debug.WriteLine("Welcome!");
            if(AppData.CurUser != null)
            {
                WelcomeLabel.Text = "Welcome, " + AppData.CurUser.FirstName + "!"; 
            }
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