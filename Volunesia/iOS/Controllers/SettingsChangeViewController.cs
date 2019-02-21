using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

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
            }
            else
            {
                CurrentLabel.Text = "Current Password";
                CurrentTextfield.SecureTextEntry = true;
                CurrentTextfield.Enabled = true;
                CurrentTextfield.SetTextContentType(UITextContentType.Password);
                NewLabel.Text = "New Password";
                NewTextfield.SecureTextEntry = true;
                NewTextfield.SetTextContentType(UITextContentType.NewPassword);
                ConfirmLabel.Hidden = false;
                ConfirmTextfield.Hidden = false;

            }
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
            ChangeEmail(NewTextfield.Text.Trim());
        }

        private void OnSwipe()
        {
            System.Diagnostics.Debug.WriteLine("OnSwip() Called");
            this.DismissViewController(true, null);
        }

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
                                                         AlertShow.Show(this, "Update Success", "Email updated successfully.");

                                                     });
        }
    }
}