using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class UserTypeSelectionController : UIViewController
    {
        public User NewUser { get; set; }
        public string NewPassword  { get; set; }

        public UserTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        //Return the user to previous screen
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        //Continue to Volunteer personal statement view
        partial void VolunteerButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("UserTypeToPersonalSegue_id", sender);
        }

        //Prepare to collect data on new nonprofits in the following view
        partial void NonprofitButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToOrgTypeSegue_id", sender);
        }

        //Prepare for the next view
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToOrgTypeSegue_id")
            {
                var nptsc = (NPTypeSelectionController)segue.DestinationViewController;
                if (nptsc != null)
                {
                    NewUser.UserType = "NP";
                    nptsc.User = NewUser;
                    nptsc.Password = NewPassword;
                    nptsc.LoadView();
                }
            }
            else if (segue.Identifier == "UserTypeToPersonalSegue_id")
            {
                var psvc = (PersonalStatementViewController)segue.DestinationViewController;
                if(psvc != null)
                {
                    NewUser.UserType = "V";
                    psvc.CurrentUser = NewUser;
                    psvc.Password = NewPassword;
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "ViewController.cs");
            }
        }
    }
}