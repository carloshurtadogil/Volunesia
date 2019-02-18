using Foundation;
using System;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS
{
    public partial class HomeViewController : UIViewController
    {
        public HomeViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            AppData_iOS.GetInstance();
            if(AppData.CurUser != null)
            {
                NameLabel.Text = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
                if(AppData.CurUser.UserType != "V")
                {
                    AddButton.Hidden = false; 
                }
                System.Diagnostics.Debug.WriteLine("User Type: " + AppData.CurUser.UserType);
            }
        }

        partial void SettingsButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "To Be Implemented", "");
        }
    }
}