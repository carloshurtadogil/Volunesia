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
            AppData_iOS.Auth.CreateUser( "carlos.hurtado@volunesia.co", 
                                         "PasswordTest",
                                         (user, error) => {
                                             if (error != null)
                                             {
                                                 AlertShow.Show(this, "Error", error.ToString());
                                                 return;
                                             }
                                             /*
                                             object[] keys = { "key1" };
                                             object[] vals = { "val1" };

                                             NSDictionary TestDict = NSDictionary.FromObjectsAndKeys(vals, keys);

                                             AppData_iOS.DataNode.GetChild("test").SetValue(TestDict);
                                             AlertShow.Show(this, "Success", "Firebase Test was a success");*/
                                         });
            AlertShow.Show(this, "UID", AppData_iOS.Auth.CurrentUser.Uid);
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.		
        }

        partial void LoginButton_TouchUpInside(UIButton sender)
        {

            AlertShow.Show(this, "Login", "To be added");
            /*
            object[] keys = { "key1" };
            object[] vals = { "val1" };

            NSDictionary TestDict = NSDictionary.FromObjectsAndKeys(vals, keys);

            AppData_iOS.UsersNode.GetChild("nonprofitreps").SetValue(TestDict);*/
            NonprofitRegistration npr = new NonprofitRegistration();
            //npr.AddNonprofitUserDataToFirebase("Test", "Rep", "testrep@test.com", "seerf1sg42231");
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
