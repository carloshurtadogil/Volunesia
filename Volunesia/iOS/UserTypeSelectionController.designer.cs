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
    [Register ("UserTypeSelectionController")]
    partial class UserTypeSelectionController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton NonprofitButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel QuestionLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton VolunteerButton { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("NonprofitButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void NonprofitButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("VolunteerButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void VolunteerButton_TouchUpInside (UIKit.UIButton sender);

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

            if (NonprofitButton != null) {
                NonprofitButton.Dispose ();
                NonprofitButton = null;
            }

            if (QuestionLabel != null) {
                QuestionLabel.Dispose ();
                QuestionLabel = null;
            }

            if (VolunteerButton != null) {
                VolunteerButton.Dispose ();
                VolunteerButton = null;
            }
        }
    }
}