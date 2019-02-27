using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class NPProfileViewController : UIViewController
    {
        public NPProfileViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            FirebaseReader.ReadVolunteerHistory("SOWdh4LP2qUxMBRRMiQBtnuPLz83");
            if (AppData.CurUser != null)
            {
                User u = AppData.CurUser;
                UserNameLabel.Text = u.FirstName + " " + u.LastName; 
            }

        }

        partial void AddButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "To be implemented", "");
        }

        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToNPRSettingsSegue_id", sender);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            if( segue.Identifier == "ToNPRSettingsSegue_id" )
            {
                var svc = (SettingsViewController)segue.DestinationViewController;
                if(svc != null)
                {
                    svc.LoadView(); 
                }
            }
        }
    }
}