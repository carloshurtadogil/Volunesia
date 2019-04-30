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
    [Register ("NPTempProfileViewController")]
    partial class NPTempProfileViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton EmailButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel LocationLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel LocationTextLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel MissionStatementLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView MissionStatementTextview { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel NameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView NavBarImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton PhoneButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel PrimaryEmailLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel PrimaryPhoneLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView ProfileImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel UserNameLabel { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("EmailButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void EmailButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("PhoneButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void PhoneButton_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (BackButton != null) {
                BackButton.Dispose ();
                BackButton = null;
            }

            if (EmailButton != null) {
                EmailButton.Dispose ();
                EmailButton = null;
            }

            if (LocationLabel != null) {
                LocationLabel.Dispose ();
                LocationLabel = null;
            }

            if (LocationTextLabel != null) {
                LocationTextLabel.Dispose ();
                LocationTextLabel = null;
            }

            if (MissionStatementLabel != null) {
                MissionStatementLabel.Dispose ();
                MissionStatementLabel = null;
            }

            if (MissionStatementTextview != null) {
                MissionStatementTextview.Dispose ();
                MissionStatementTextview = null;
            }

            if (NameLabel != null) {
                NameLabel.Dispose ();
                NameLabel = null;
            }

            if (NavBarImageView != null) {
                NavBarImageView.Dispose ();
                NavBarImageView = null;
            }

            if (PhoneButton != null) {
                PhoneButton.Dispose ();
                PhoneButton = null;
            }

            if (PrimaryEmailLabel != null) {
                PrimaryEmailLabel.Dispose ();
                PrimaryEmailLabel = null;
            }

            if (PrimaryPhoneLabel != null) {
                PrimaryPhoneLabel.Dispose ();
                PrimaryPhoneLabel = null;
            }

            if (ProfileImageView != null) {
                ProfileImageView.Dispose ();
                ProfileImageView = null;
            }

            if (UserNameLabel != null) {
                UserNameLabel.Dispose ();
                UserNameLabel = null;
            }
        }
    }
}