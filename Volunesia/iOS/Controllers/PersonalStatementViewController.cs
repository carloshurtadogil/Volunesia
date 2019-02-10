using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class PersonalStatementViewController : UIViewController
    {
        public User CurrentUser { get; set; }//"PSToWelcomeSegue_id"
        public string Password { get; set; }


        public PersonalStatementViewController (IntPtr handle) : base (handle)
        {
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("PSToWelcomeSegue_id", null);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if (segue.Identifier == "PSToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if (wvc != null)
                {
                    Register r = new Register();
                    r.NPType = "volunteer";
                    r.MissionStatement = StoryTextView.Text.Trim();
                    r.CreateUser(CurrentUser, Password, this);
                }
            }
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }
    }
}