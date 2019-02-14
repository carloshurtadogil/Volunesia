using Foundation;
using System;
using UIKit;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class RegistrationViewController : UIViewController
    {
        public RegistrationViewController (IntPtr handle) : base (handle)
        {
        }

        //Return back to the base page
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        //Move to the next page in the registration process
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if(ValidName())
            {
                this.PerformSegue("ToERVCSegue_id", sender);
            }

        }

        //Prepare to move to the next View
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);



            if (segue.Identifier == "ToERVCSegue_id")
            {

                var rvc = (EmailRegistrationViewController)segue.DestinationViewController;//Prepare the next page
                if (rvc != null)
                {
                    //Trim the first and last names to eliminate trailing white spaces
                    string fn = FirstNameTextfield.Text;
                    string ln = LastNameTextfield.Text;

                    fn.Trim();
                    ln.Trim();

                    //Prepare new user
                    User newuser = new User
                    {
                        FirstName = fn,
                        LastName = ln
                    };

                    rvc.NewUser = newuser;
                    rvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "RegistrationViewController.cs");
            }
        }

        //Ensure that the user has inserted something into the First and Last name fields
        public bool ValidName() 
        {
            string fn = FirstNameTextfield.Text;
            string ln = LastNameTextfield.Text;

            fn.Trim();
            ln.Trim();

            if(fn.Length < 1)
            {
                AlertShow.Show(this, "First Name", "Please enter your first name.");
                return false;
            }

            if(ln.Length < 1)
            {
                AlertShow.Show(this, "Last Name", "Please enter your last name.");
                return false;
            }

            return true; 
        }

    }
}