using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class WelcomeViewController : UIViewController
    {
        public User CurrUser { get; set; }
        public NonprofitRepresentative CurrRep { get; set; }

        public WelcomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            
            System.Threading.Thread.Sleep(1000);

            AppData_iOS.GetInstance();
            if (AppData.CurUser != null)
            {
                WelcomeLabel.Text = "Welcome, " + AppData.CurUser.FirstName + "!";
            }


            if (AppData.CurUser != null)
            {
                if (AppData.CurUser.UserType == "NP")
                {
                    this.PerformSegue("ToNPProfileSegue_id", this);
                }
                else
                {
                    this.PerformSegue("ToHomeSegue_id", this);
                }
            }
            else if (CurrUser != null)
            {
                AppData_iOS.GetInstance();
                if (CurrUser.UserType == "NP")
                {
                    this.PerformSegue("ToNPProfileSegue_id", this);
                }
                else if(CurrUser.UserType == "V")
                {
                    this.PerformSegue("ToHomeSegue_id", this);
                }
            }
            else
            {
                DismissViewController(true, () => { this.LoadView(); });
                System.Diagnostics.Debug.WriteLine("Null User");            
            }

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
            else if (segue.Identifier == "ToNPProfileSegue_id")
            {
                var nppvc = (NPProfileViewController)segue.DestinationViewController;
                if(nppvc != null)
                {
                    nppvc.LoadView(); 
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Error", "LoginViewController");
            }

        }
    }
}