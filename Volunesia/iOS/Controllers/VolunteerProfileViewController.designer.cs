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
    [Register ("VolunteerProfileViewController")]
    partial class VolunteerProfileViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView Badge1 { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView Badge2 { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView Badge3 { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView Badge4 { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView Badge5 { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ExperienceLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel LevelLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel NameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView PersonalStatementTextview { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView ProfileImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel PSLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISwipeGestureRecognizer SwipeDownHandler { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (BackButton != null) {
                BackButton.Dispose ();
                BackButton = null;
            }

            if (BackgroundImageView != null) {
                BackgroundImageView.Dispose ();
                BackgroundImageView = null;
            }

            if (Badge1 != null) {
                Badge1.Dispose ();
                Badge1 = null;
            }

            if (Badge2 != null) {
                Badge2.Dispose ();
                Badge2 = null;
            }

            if (Badge3 != null) {
                Badge3.Dispose ();
                Badge3 = null;
            }

            if (Badge4 != null) {
                Badge4.Dispose ();
                Badge4 = null;
            }

            if (Badge5 != null) {
                Badge5.Dispose ();
                Badge5 = null;
            }

            if (ExperienceLabel != null) {
                ExperienceLabel.Dispose ();
                ExperienceLabel = null;
            }

            if (LevelLabel != null) {
                LevelLabel.Dispose ();
                LevelLabel = null;
            }

            if (NameLabel != null) {
                NameLabel.Dispose ();
                NameLabel = null;
            }

            if (PersonalStatementTextview != null) {
                PersonalStatementTextview.Dispose ();
                PersonalStatementTextview = null;
            }

            if (ProfileImageView != null) {
                ProfileImageView.Dispose ();
                ProfileImageView = null;
            }

            if (PSLabel != null) {
                PSLabel.Dispose ();
                PSLabel = null;
            }

            if (SwipeDownHandler != null) {
                SwipeDownHandler.Dispose ();
                SwipeDownHandler = null;
            }
        }
    }
}