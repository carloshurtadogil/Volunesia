using Foundation;
using System;
using System.Text.RegularExpressions;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class EmailRegistrationViewController : UIViewController
    {
        //User being create
        public User NewUser   { get; set; }

        public EmailRegistrationViewController (IntPtr handle) : base (handle)
        {

        }

        //Return to Name view
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            DismissViewController(true, null);
        }

        //Continue to user type selection view
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if (ValidCredentials())
            {
                this.PerformSegue("ToUserTypeSelectionSegue_id", sender);
            }
        }

        //Prepare to transition to next scene
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToUserTypeSelectionSegue_id")
            {

                var rvc = (UserTypeSelectionController)segue.DestinationViewController;
                if (rvc != null)
                {
                    NewUser.EmailAddress = EmailTextfield.Text.Trim();
                    rvc.NewUser = NewUser;
                    rvc.NewPassword = PasswordTextfield.Text.Trim();
                    rvc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "EmailRegistrationViewController.cs");
            }
        }

        //Validate the user's new credentials
        public bool ValidCredentials()
        {
            string email = Regex.Replace(EmailTextfield.Text, @"\s", "");
            string pw = Regex.Replace(PasswordTextfield.Text, @"\s", ""); 
            string cpw = Regex.Replace(ConfirmPasswordTextfield.Text, @"\s", "");
            CredentialsVerification cv = new CredentialsVerification();

            if(email.Length > 1) //To be improved upon
            {
              //  AlertShow.Show(this, "Invalid Email", "Please enter a valid email.");
            //    return false;
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