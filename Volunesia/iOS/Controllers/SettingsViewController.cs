using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class SettingsViewController : UIViewController
    {
        public SettingsViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            System.Diagnostics.Debug.WriteLine("SVC Opened");
            UISwipeGestureRecognizer recognizer = new UISwipeGestureRecognizer(OnSwipe);
            recognizer.Direction = UISwipeGestureRecognizerDirection.Down;
            View.AddGestureRecognizer(recognizer);
        }

        private void OnSwipe()
        {
            System.Diagnostics.Debug.WriteLine("OnSwip() Called");
            this.DismissViewController(true, null);
        }

        partial void LogoutButton_TouchUpInside(UIButton sender)
        {
            UIAlertController logoutalert = UIAlertController.Create("Logout Alert", "Are you sure you want to log out?", UIAlertControllerStyle.Alert);
            //UIAlertController logoutalert = UIAlertController.Create("Logout Alert", "Are you sure you want to log out?", UIAlertControllerStyle.ActionSheet);
            logoutalert.AddAction(UIAlertAction.Create("Logout",
                                                       UIAlertActionStyle.Destructive,
                                                       (obj) =>
                                                       {
                                                           Logout(sender);
                                                       }));
            logoutalert.AddAction(UIAlertAction.Create("Cancel",
                                                       UIAlertActionStyle.Cancel,
                                                       null));

            this.PresentViewController(logoutalert, true, null);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "SettingsToHomeSegue_id")
            {
                var vc = (ViewController)segue.DestinationViewController;
                if(vc != null)
                {
                    vc.LoadView(); 
                }
            }
        }

        public void Logout(UIButton sender)
        {
            NSError error;
            AppData_iOS.GetInstance();
            if (AppData_iOS.Auth.SignOut(out error))
            {
                AppData.CurUser = null;
                ReadWrite.WriteUser();
                this.PerformSegue("SettingsToHomeSegue_id", sender);
            }
            else
            {
                AlertShow.Show(this, "Fail to Signout", "");
            }
        }
    }
}