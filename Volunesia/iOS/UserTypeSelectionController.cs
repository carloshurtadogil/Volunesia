using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class UserTypeSelectionController : UIViewController
    {
        public string FirstName { get; set; }
        public string LastName  { get; set; }
        public string Email     { get; set; }
        public string Password  { get; set; }

        public UserTypeSelectionController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        partial void VolunteerButton_TouchUpInside(UIButton sender)
        {
            //FirebaseTest();
            AlertShow.Show(this, "Volunteer", "To be implemented");
        }

        partial void NonprofitButton_TouchUpInside(UIButton sender)
        {
            NonprofitRegistration npr = new NonprofitRegistration();
            npr.CreateNonprofitUser(FirstName, LastName, Email, Password, this);
            AlertShow.Show(this, "Nonprofit", ("User " + FirstName + " " + LastName +" Added"));
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToRVCSegue_id")
            {
                var rvc = (RegistrationViewController)segue.DestinationViewController;
                if (rvc != null)
                {

                    rvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "ViewController.cs");
            }
        }

        public void FirebaseTest()
        {
            AppData_iOS.Auth.CreateUser( Email,
                                         Password,
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
    }
}