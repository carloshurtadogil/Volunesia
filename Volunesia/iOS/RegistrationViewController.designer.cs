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
    [Register ("RegistrationViewController")]
    partial class RegistrationViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton NonprofitBtn { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton VolunteerBtn { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("NonprofitBtn_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void NonprofitBtn_TouchUpInside (UIKit.UIButton sender);

        [Action ("VolunteerBtn_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void VolunteerBtn_TouchUpInside (UIKit.UIButton sender);

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

            if (NonprofitBtn != null) {
                NonprofitBtn.Dispose ();
                NonprofitBtn = null;
            }

            if (VolunteerBtn != null) {
                VolunteerBtn.Dispose ();
                VolunteerBtn = null;
            }
        }
    }
}