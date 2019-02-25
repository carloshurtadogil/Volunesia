using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class PersonalStatementViewController : UIViewController
    {
        //User to be added to Firebase
        public User CurrentUser { get; set; }
        public string Password { get; set; }


        public PersonalStatementViewController (IntPtr handle) : base (handle)
        {
        }

        //Continue to welcome page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("PSToWelcomeSegue_id", null);
        }

        //Prepare users and register
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if (segue.Identifier == "PSToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if (wvc != null)
                {
                    Register r = new Register();
                    string personal = StoryTextView.Text.Trim();
                    r.NPType = "V";
                    if(personal.Length == 0)
                    {
                        personal = " "; 
                    }
                    r.MissionStatement = personal;
                    r.CreateUser(CurrentUser, Password, this);//create user before moving to next class
                    wvc.CurrUser = CurrentUser;
                }
            }
        }

        //Return to previous view
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }
    }
}