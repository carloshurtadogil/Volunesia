using System;
using Foundation;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class ViewController : UIViewController
    {
        public ViewController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            AppData_iOS.GetInstance();
            AppData.CurUser = null;
            ReadWrite.WriteUser();
        }



        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.		
        }

        partial void LoginButton_TouchUpInside(UIButton sender)
        {
            this.PerformSegue("ToLoginVCSegue_id", sender);
        }

        partial void SignupButton_TouchUpInside(UIButton sender)
        {
           
            this.PerformSegue("ToRVCSegue_id", sender);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if(segue.Identifier == "ToRVCSegue_id")
            {
                var rvc = (RegistrationViewController)segue.DestinationViewController;
                if(rvc != null) 
                {

                    rvc.LoadView(); 
                }
            }
            else if (segue.Identifier == "ToLoginVCSegue_id") 
            {
                var lvc = (LoginViewController)segue.DestinationViewController;
                if(lvc != null)
                {
                    lvc.LoadView(); 
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "ViewController.cs");
            }
        }

    }
}
