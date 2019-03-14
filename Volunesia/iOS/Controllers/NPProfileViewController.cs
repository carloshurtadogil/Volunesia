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

            if (AppData.CurUser != null)
            {
                User u = AppData.CurUser;
                UserNameLabel.Text = u.FirstName + " " + u.LastName;
                NameLabel.Text = AppData.NonprofitRepresentative.AssociatedNonprofitName;
                if(AppData_iOS.NonprofitEvents != null)
                {
                    AlertShow.Print(AppData_iOS.NonprofitEvents.Count.ToString());
                }
                else
                {
                    AlertShow.Print("Empty list"); 
                }
                if (AppData.NonprofitRepresentative.Poster == "Y")
                {
                    AddButton.Enabled = true;
                }
                else
                {
                    AddButton.Enabled = false; 
                }
            }

        }

        //Start the event creation process
        partial void AddButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToEventCreationSegue_id", sender);
        }

        //Continue to the settings view controller
        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToNPRSettingsSegue_id", sender);
        }


        //Prepare to move to the next view controller
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
            else if( segue.Identifier == "ToEventCreationSegue_id")
            {
                var eivc = (EventInformationViewController)segue.DestinationViewController;
                if(eivc != null)
                {
                    eivc.LoadView(); 
                }
            }
        }
    }
}