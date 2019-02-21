using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class WelcomeViewController : UIViewController
    {
        public WelcomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            System.Diagnostics.Debug.WriteLine("Welcome!");
            if(AppData.CurUser != null)
            {
                WelcomeLabel.Text = "Welcome, " + AppData.CurUser.FirstName + "!"; 
            }
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            System.Threading.Thread.Sleep(5000);
            this.PerformSegue("ToHomeSegue_id", this);

        }


        public void SetName(string name) 
        {
            //WelcomeLabel.Text = "Welcome, " + FirstName + "!";
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToBaseSegue_id")
            {
                var vc = (ViewController)segue.DestinationViewController;
                if (vc != null)
                {
                    if(AppData.CurUser == null)
                    {
                        System.Diagnostics.Debug.WriteLine("Null user");
                    }
                    vc.LoadView();
                }
            }
            else if (segue.Identifier == "ToHomeSegue_id")
            {
                var hvc = (HomeViewController)segue.DestinationViewController;
                if (hvc != null)
                {
                    hvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Error", "LoginViewController");
            }

        }
    }
}