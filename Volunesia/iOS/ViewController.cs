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



        public void FirebaseTest () 
        {
            AppData_iOS.Auth.CreateUser( "carlos.hurtado@volunesia.com", 
                                         "PasswordTest",
                                         (user, error) => {
                                             if (error != null)
                                             {
                                                 AlertShow.Show(this, "Error", error.ToString());
                                                 return;
                                             }
                                             object[] keys = { "key1" };
                                             object[] vals = { "val1" };

                                             NSDictionary TestDict = NSDictionary.FromObjectsAndKeys(vals, keys);

                                             AppData_iOS.DataNode.GetChild("test").SetValue(TestDict);
                                             AlertShow.Show(this, "Success", "Firebase Test was a success");
                                         }); 
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
            RegistrationViewController rvc = this.Storyboard.InstantiateViewController("RegistrationView") as RegistrationViewController;
            if (rvc != null)
            {
                this.NavigationController.PushViewController(rvc, true);
            }
        }

    }
}
