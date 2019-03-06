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
    [Register ("EventInformationViewController")]
    partial class EventInformationViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISwitch AppDeadlineSwitch { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton BackButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView BackgroundImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel CapacityLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISwitch CapacitySwitch { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField CapacityTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView CoverPhotoImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField DeadlineTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel EventDeadlineLine { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel EventDescriptionLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView EventDescriptionTextView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel EventNameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField EventNameTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel EventPhotoLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel EventTimeLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField EventTimeTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel EventTitle { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel LocationLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField LocationTextfield { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIScrollView ScrollView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton SubmitButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISwipeGestureRecognizer SwipeDownHandler { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton UploadImageButton { get; set; }

        [Action ("BackButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void BackButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("CapToggled:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void CapToggled (UIKit.UISwitch sender);

        [Action ("DeadlineToggled:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void DeadlineToggled (UIKit.UISwitch sender);

        [Action ("SubmitButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SubmitButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("UploadImageButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void UploadImageButton_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (AppDeadlineSwitch != null) {
                AppDeadlineSwitch.Dispose ();
                AppDeadlineSwitch = null;
            }

            if (BackButton != null) {
                BackButton.Dispose ();
                BackButton = null;
            }

            if (BackgroundImageView != null) {
                BackgroundImageView.Dispose ();
                BackgroundImageView = null;
            }

            if (CapacityLabel != null) {
                CapacityLabel.Dispose ();
                CapacityLabel = null;
            }

            if (CapacitySwitch != null) {
                CapacitySwitch.Dispose ();
                CapacitySwitch = null;
            }

            if (CapacityTextfield != null) {
                CapacityTextfield.Dispose ();
                CapacityTextfield = null;
            }

            if (CoverPhotoImageView != null) {
                CoverPhotoImageView.Dispose ();
                CoverPhotoImageView = null;
            }

            if (DeadlineTextfield != null) {
                DeadlineTextfield.Dispose ();
                DeadlineTextfield = null;
            }

            if (EventDeadlineLine != null) {
                EventDeadlineLine.Dispose ();
                EventDeadlineLine = null;
            }

            if (EventDescriptionLabel != null) {
                EventDescriptionLabel.Dispose ();
                EventDescriptionLabel = null;
            }

            if (EventDescriptionTextView != null) {
                EventDescriptionTextView.Dispose ();
                EventDescriptionTextView = null;
            }

            if (EventNameLabel != null) {
                EventNameLabel.Dispose ();
                EventNameLabel = null;
            }

            if (EventNameTextfield != null) {
                EventNameTextfield.Dispose ();
                EventNameTextfield = null;
            }

            if (EventPhotoLabel != null) {
                EventPhotoLabel.Dispose ();
                EventPhotoLabel = null;
            }

            if (EventTimeLabel != null) {
                EventTimeLabel.Dispose ();
                EventTimeLabel = null;
            }

            if (EventTimeTextfield != null) {
                EventTimeTextfield.Dispose ();
                EventTimeTextfield = null;
            }

            if (EventTitle != null) {
                EventTitle.Dispose ();
                EventTitle = null;
            }

            if (LocationLabel != null) {
                LocationLabel.Dispose ();
                LocationLabel = null;
            }

            if (LocationTextfield != null) {
                LocationTextfield.Dispose ();
                LocationTextfield = null;
            }

            if (ScrollView != null) {
                ScrollView.Dispose ();
                ScrollView = null;
            }

            if (SubmitButton != null) {
                SubmitButton.Dispose ();
                SubmitButton = null;
            }

            if (SwipeDownHandler != null) {
                SwipeDownHandler.Dispose ();
                SwipeDownHandler = null;
            }

            if (UploadImageButton != null) {
                UploadImageButton.Dispose ();
                UploadImageButton = null;
            }
        }
    }
}