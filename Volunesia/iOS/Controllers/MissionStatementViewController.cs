using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class MissionStatementViewController : UIViewController
    {

        public string NPName    { get; set; }
        public string EIN       { get; set; }
        public string Phone     { get; set; }
        public string Zip       { get; set; }
        public string City      { get; set; }
        public string State     { get; set; }
        public string NPType    { get; set; }
        public User CurrentUser { get; set; }
        public string Password  { get; set; }

        public MissionStatementViewController (IntPtr handle) : base (handle)
        {
        }

        //Prepare for welcome page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("MSToWelcomeSegue_id", sender);
        }

        //Register nonproift to Firebase
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "MSToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if (wvc != null)
                {
                    Register r = new Register();
                    r.NPName = NPName;
                    r.EIN = EIN;
                    r.Phone = Phone;
                    r.Zip = Zip;
                    r.City = City;
                    r.State = State;
                    r.NPType = NPType;
                    r.MissionStatement = StoryTextView.Text.Trim();

                    r.CreateUser(CurrentUser, Password, this);
                }
            }
        }

        //Return to previous page
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }
    }
}