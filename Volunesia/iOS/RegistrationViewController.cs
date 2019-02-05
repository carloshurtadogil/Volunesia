using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class RegistrationViewController : UIViewController
    {
        public RegistrationViewController (IntPtr handle) : base (handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if(ValidName())
            {
                this.PerformSegue("ToERVCSegue_id", sender);
            }

        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);



            if (segue.Identifier == "ToERVCSegue_id")
            {
                //AlertShow.Show(this, "Reached", "");

                var rvc = (EmailRegistrationViewController)segue.DestinationViewController;
                if (rvc != null)
                {
                    string fn = FirstNameTextfield.Text;
                    string ln = LastNameTextfield.Text;

                    fn.Trim();
                    ln.Trim();

                    rvc.FirstName = fn;
                    rvc.LastName = ln;
                    rvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "RegistrationViewController.cs");
            }
        }

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