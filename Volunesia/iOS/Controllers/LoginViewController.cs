using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class LoginViewController : UIViewController
    {

        public string FirstName { get; set; }

        public LoginViewController (IntPtr handle) : base (handle)
        {
        }

        //Return back to login/signup page by dismissing this view
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if(ValidEmail())
            {
                if (ValidPassword())
                {
                    string email = EmailTextfield.Text.Trim();
                    string password = PasswordTextfield.Text.Trim();
                    AppData_iOS.Auth.SignInWithPassword(email,
                                                        password,
                                                        (authResult, error) => { 
                                                            if(error != null)
                                                            {
                                                                AlertShow.Show(this, "Invalid Credentials", "");
                                                                PasswordTextfield.Text = ""; 
                                                            }
                                                            System.Diagnostics.Debug.WriteLine("Passed");
                                                            FirebaseReader.ReadUser(authResult);
                                                           
                                                            if (AppData.CurUser != null)
                                                            {
                                                                FirstName = AppData.CurUser.FirstName;
                                                            }
                                                            this.PerformSegue("LoginToWelcomeSegue_id", sender);

                                                        });
                    //*/
                    //this.PerformSegue("LoginToWelcomeSegue_id", sender);

                }
                else
                {
                    AlertShow.Show(this, "Invalid Password", ""); 
                }
            }
            else
            {
                AlertShow.Show(this, "Invalid Email", ""); 
            }

        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if(segue.Identifier == "LoginToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if(wvc != null)
                {
                    wvc.LoadView(); 
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Error", "LoginViewController"); 
            }

        }

        public bool ValidEmail()
        {
            if(EmailTextfield.Text.Trim().Length >= 4)
            {
                return true; 
            }
            return false; 
        }

        public bool ValidPassword()
        {
            if (PasswordTextfield.Text.Trim().Length >= 8)
            {
                return true;
            }
            return false;
        }
    }
}