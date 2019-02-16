using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
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

        //Temporary Logout
        partial void LogoutBtn_TouchUpInside(UIButton sender)
        {
            NSError error;
            AppData_iOS.GetInstance();
            if(AppData_iOS.Auth.SignOut(out error))
            {
                AppData.CurUser = null;
                ReadWrite.WriteUser();
                this.PerformSegue("ToBaseSegue_id", sender);
            }
            else
            {
                AlertShow.Show(this, "Fail to Signout", ""); 
            }

        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToBaseSegue_id")
            {
                var vc = (ViewController)segue.DestinationViewController;
                if (vc != null)
                {
                    if(AppData.CurUser == null)
                    {
                        System.Diagnostics.Debug.WriteLine("Null user");
                    }
                    vc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Error", "LoginViewController");
            }

        }
    }
}