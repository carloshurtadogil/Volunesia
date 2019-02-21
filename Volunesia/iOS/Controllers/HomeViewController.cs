using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class HomeViewController : UIViewController
    {
        public HomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            AppData_iOS.GetInstance();
            if(AppData.CurUser != null)
            {
                NameLabel.Text = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
                if(AppData.CurUser.UserType != "V")
                {
                    AddButton.Hidden = false; 
                }
                System.Diagnostics.Debug.WriteLine("User Type: " + AppData.CurUser.UserType);
            }
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "ToSettingsSegue_id")
            {
                var svc = (SettingsViewController)segue.DestinationViewController;
                if(svc != null)
                {
                    svc.LoadView(); 
                }
            }
        }

        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToSettingsSegue_id", sender);
        }

    }
}