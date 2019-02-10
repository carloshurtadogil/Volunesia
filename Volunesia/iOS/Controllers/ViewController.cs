using System;
using Foundation;
using UIKit;
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
        }



        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.		
        }

        partial void LoginButton_TouchUpInside(UIButton sender)
        {

            AlertShow.Show(this, "Login", "To be added");
           
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
            else
            {
                AlertShow.Show(this, "Segue Failure", "ViewController.cs");
            }
        }

    }
}
