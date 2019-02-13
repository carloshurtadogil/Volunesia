using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class LoginViewController : UIViewController
    {
        public LoginViewController (IntPtr handle) : base (handle)
        {
        }

        //Return back to login/signup page by dismissing this view
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("LoginToWelcomeSegue_id", sender);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if(segue.Identifier == "LoginToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if(wvc != null)
                {
                    wvc.LoadView(); 
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Error", "LoginViewController"); 
            }

        }
    }
}