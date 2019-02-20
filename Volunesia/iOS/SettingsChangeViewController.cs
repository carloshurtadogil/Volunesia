using Foundation;
using System;
using UIKit;

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
            AlertShow.Show(this, "To Be Implemented", "");
        }

        private void OnSwipe()
        {
            System.Diagnostics.Debug.WriteLine("OnSwip() Called");
            this.DismissViewController(true, null);
        }
    }
}