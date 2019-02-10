using Foundation;
using System;
using UIKit;
using Volunesia.Models;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class UserTypeSelectionController : UIViewController
    {
        public string NewFirstName { get; set; }
        public string NewLastName  { get; set; }
        public string NewEmail     { get; set; }
        public string NewPassword  { get; set; }

        public UserTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        partial void VolunteerButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("UserTypeToPersonalSegue_id", sender);
        }

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
                    User user = new User
                    {
                        FirstName = NewFirstName,
                        LastName = NewLastName,
                        EmailAddress = NewEmail,
                        UserType = "NP"
                    };
                    nptsc.User = user;
                    nptsc.Password = NewPassword;
                    nptsc.LoadView();
                }
            }
            else if (segue.Identifier == "UserTypeToPersonalSegue_id")
            {
                var psvc = (PersonalStatementViewController)segue.DestinationViewController;
                if(psvc != null)
                {
                    User user = new User
                    {
                        FirstName = NewFirstName,
                        LastName = NewLastName,
                        EmailAddress = NewEmail,
                        UserType = "V"
                    };
                    psvc.CurrentUser = user;
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