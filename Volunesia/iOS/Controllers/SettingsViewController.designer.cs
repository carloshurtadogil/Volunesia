// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace Volunesia.iOS
{
    [Register ("SettingsViewController")]
    partial class SettingsViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton LogoutButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISwipeGestureRecognizer SwipeDownHandler { get; set; }

        [Action ("LogoutButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void LogoutButton_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (BackgroundImageView != null) {
                BackgroundImageView.Dispose ();
                BackgroundImageView = null;
            }

            if (LogoutButton != null) {
                LogoutButton.Dispose ();
                LogoutButton = null;
            }

            if (SwipeDownHandler != null) {
                SwipeDownHandler.Dispose ();
                SwipeDownHandler = null;
            }
        }
    }
}