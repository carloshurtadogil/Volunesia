using Foundation;
using System;
using System.Text.RegularExpressions;
using UIKit;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class EmailRegistrationViewController : UIViewController
    {
        public string FirstName { get; set; }
        public string LastName  { get; set; }

        public EmailRegistrationViewController (IntPtr handle) : base (handle)
        {

        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            //ToUserTypeSelectionSegue_id

            if (ValidCredentials())
            {
                this.PerformSegue("ToUserTypeSelectionSegue_id", sender);
            }
        }


        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);



            if (segue.Identifier == "ToUserTypeSelectionSegue_id")
            {

                var rvc = (UserTypeSelectionController)segue.DestinationViewController;
                if (rvc != null)
                {
                    rvc.FirstName = FirstName;
                    rvc.LastName  = LastName;
                    rvc.Email     = EmailTextfield.Text.Trim();
                    rvc.Password  = PasswordTextfield.Text.Trim();
                    rvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "EmailRegistrationViewController.cs");
            }
        }

        public bool ValidCredentials()
        {
            string email = Regex.Replace(EmailTextfield.Text, @"\s", "");
            string pw = Regex.Replace(PasswordTextfield.Text, @"\s", ""); 
            string cpw = Regex.Replace(ConfirmPasswordTextfield.Text, @"\s", ""); 

            if(!email.Contains("@")) //To be improved upon
            {
                AlertShow.Show(this, "Invalid Email", "Please enter a valid email.");
                return false;
            }

            if(pw.Length < 8)
            {
                AlertShow.Show(this, "Invalid Password", "Please enter a strong password greater than 8 characters in length.");
                return false;
            }

            if(!pw.Equals(cpw))
            {
                AlertShow.Show(this, "Passwords Do Not Match", "Please ensure that the passwords match.");
                return false;
            }

            return true; 
        }
    }
}