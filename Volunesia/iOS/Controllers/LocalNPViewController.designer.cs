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
    [Register ("LocalNPViewController")]
    partial class LocalNPViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel CityLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField CityTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton ContinueButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel OrganizationNameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField OrganizationNameTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel PhoneLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField PhoneTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel StateLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel StatementLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField StateTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ZipLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField ZipTextfield { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("ContinueButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void ContinueButton_TouchUpInside (UIKit.UIButton sender);

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

            if (CityLabel != null) {
                CityLabel.Dispose ();
                CityLabel = null;
            }

            if (CityTextfield != null) {
                CityTextfield.Dispose ();
                CityTextfield = null;
            }

            if (ContinueButton != null) {
                ContinueButton.Dispose ();
                ContinueButton = null;
            }

            if (OrganizationNameLabel != null) {
                OrganizationNameLabel.Dispose ();
                OrganizationNameLabel = null;
            }

            if (OrganizationNameTextfield != null) {
                OrganizationNameTextfield.Dispose ();
                OrganizationNameTextfield = null;
            }

            if (PhoneLabel != null) {
                PhoneLabel.Dispose ();
                PhoneLabel = null;
            }

            if (PhoneTextfield != null) {
                PhoneTextfield.Dispose ();
                PhoneTextfield = null;
            }

            if (StateLabel != null) {
                StateLabel.Dispose ();
                StateLabel = null;
            }

            if (StatementLabel != null) {
                StatementLabel.Dispose ();
                StatementLabel = null;
            }

            if (StateTextfield != null) {
                StateTextfield.Dispose ();
                StateTextfield = null;
            }

            if (ZipLabel != null) {
                ZipLabel.Dispose ();
                ZipLabel = null;
            }

            if (ZipTextfield != null) {
                ZipTextfield.Dispose ();
                ZipTextfield = null;
            }
        }
    }
}