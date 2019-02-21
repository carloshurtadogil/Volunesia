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

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            System.Diagnostics.Debug.WriteLine("VDL   Opened");
            LoadInfo();
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            System.Diagnostics.Debug.WriteLine("SVC Opened");
            UISwipeGestureRecognizer recognizer = new UISwipeGestureRecognizer(OnSwipe);
            recognizer.Direction = UISwipeGestureRecognizerDirection.Down;
            View.AddGestureRecognizer(recognizer); 
            LoadInfo();


        }

        private void OnSwipe()
        {
            System.Diagnostics.Debug.WriteLine("OnSwip() Called");
            this.DismissViewController(true, null);
        }

        private void LoadInfo()
        {
            SettingsDataSource sdc = new SettingsDataSource(this);
            SettingsTableView.Source = sdc;
            SettingsTableView.ScrollEnabled = false;
            SettingsTableView.ReloadData();
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
            else if(segue.Identifier == "ToSettingsChangeSegue_id")
            {
                var scvc = (SettingsChangeViewController)segue.DestinationViewController;
                if(scvc != null) 
                {
                    NSIndexPath p = (NSIndexPath)sender;
                    if(p.Row == 0) 
                    {
                        scvc.SettingsType = "email"; 
                    }
                    else
                    {
                        scvc.SettingsType = "password"; 
                    }
                    scvc.LoadView(); 
                }
            }
        }

        //For those not intuitive enough to swipe down to dismiss this controller
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
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