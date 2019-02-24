using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;
using System.Text.RegularExpressions;

namespace Volunesia.iOS
{
    public partial class SettingsChangeViewController : UIViewController
    {
        public string SettingsType { get; set; }

        public SettingsChangeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            AppData_iOS.GetInstance();
            if(SettingsType == "email")
            {
                CurrentLabel.Text = "Current Email";
                CurrentTextfield.Text = AppData.CurUser.EmailAddress;
                NewLabel.Text = "New Email";
                NewTextfield.KeyboardType = UIKeyboardType.EmailAddress;
                NewTextfield.SecureTextEntry = false;
                NewTextfield.SetTextContentType( UITextContentType.EmailAddress);
                CurrentLabel.Hidden = false;
                CurrentTextfield.Hidden = false;
                NewLabel.Hidden = false;
                NewTextfield.Hidden = false;
            }
            else
            {
                CurrentLabel.Hidden = true;
                CurrentTextfield.Hidden = true;
                NewLabel.Hidden = true;
                NewTextfield.Hidden = true;
                UIImage image = UIImage.FromBundle("Images/ChangeBtn.png");
                SaveButton.SetBackgroundImage(image ,UIControlState.Normal);

            }

            SaveButton.Hidden = false;
            UISwipeGestureRecognizer recognizer = new UISwipeGestureRecognizer(OnSwipe);
            recognizer.Direction = UISwipeGestureRecognizerDirection.Right;
            View.AddGestureRecognizer(recognizer);
        }

        //Return to the settings view controller
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        //Save the user's changes
        partial void SaveButton_TouchUpInside(UIButton sender)
        {
            if(SettingsType == "email")
            {
                ChangeEmail(NewTextfield.Text.Trim());
            }
            else if(SettingsType == "password")
            {
                SendPasswordResetEmail();
            }
        }

        //Dismiss the ViewController when swiping from left to right
        private void OnSwipe()
        {
            System.Diagnostics.Debug.WriteLine("OnSwip() Called");
            this.DismissViewController(true, null);
        }

        //Update the user's email on device and Firebase
        private void ChangeEmail(string email) 
        {
            AppData_iOS.Auth.CurrentUser.UpdateEmail(email, 
                                                     (error) => { 
                                                        if(error != null) 
                                                        {
                                                             AlertShow.Show(this, "Update Error", "Unable to update email.");
                                                             return;
                                                        }
                                                         AppData.CurUser.EmailAddress = email;
                                                         ReadWrite.WriteUser();
                                                         FirebaseReader.WriteUserEmail();
                                                         AlertShow.Show(this, true, "Update Success", "Email updated successfully.");

                                                     });
        }

        //Send password reset email to user
        private void SendPasswordResetEmail()
        {
            AppData_iOS.Auth.SendPasswordReset(AppData.CurUser.EmailAddress, (error) =>
             {
                 if (error != null)
                 {
                     AlertShow.Show(this, "Update Error", "Unable to send password reset email");
                 }
                 else
                 {
                     AlertShow.Show(this, true, "Password reset email sent", "");
                 }
             });
        }
    }
}