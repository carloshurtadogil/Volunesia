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
    [Register ("WelcomeViewController")]
    partial class WelcomeViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton LogoutBtn { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView LogoView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel WelcomeLabel { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("LogoutBtn_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void LogoutBtn_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (BackButton != null) {
                BackButton.Dispose ();
                BackButton = null;
            }

            if (BackgroundImage != null) {
                BackgroundImage.Dispose ();
                BackgroundImage = null;
            }

            if (LogoutBtn != null) {
                LogoutBtn.Dispose ();
                LogoutBtn = null;
            }

            if (LogoView != null) {
                LogoView.Dispose ();
                LogoView = null;
            }

            if (WelcomeLabel != null) {
                WelcomeLabel.Dispose ();
                WelcomeLabel = null;
            }
        }
    }
}