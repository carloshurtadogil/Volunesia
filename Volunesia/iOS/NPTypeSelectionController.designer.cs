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
    [Register ("NPTypeSelectionController")]
    partial class NPTypeSelectionController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton EstablishedButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton LocalButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel QuestionLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton SchoolButton { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("EstablishedButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void EstablishedButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("LocalButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void LocalButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("SchoolButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SchoolButton_TouchUpInside (UIKit.UIButton sender);

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

            if (EstablishedButton != null) {
                EstablishedButton.Dispose ();
                EstablishedButton = null;
            }

            if (LocalButton != null) {
                LocalButton.Dispose ();
                LocalButton = null;
            }

            if (QuestionLabel != null) {
                QuestionLabel.Dispose ();
                QuestionLabel = null;
            }

            if (SchoolButton != null) {
                SchoolButton.Dispose ();
                SchoolButton = null;
            }
        }
    }
}