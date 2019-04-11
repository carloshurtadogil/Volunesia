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
    [Register ("NPProfileViewController")]
    partial class NPProfileViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton EventsButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITableView EventsTableView { get; set; }

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
        UIKit.UIButton NewEventButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton NotificationButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton ProfileButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView ProfileImageView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton SettingsButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel UserNameLabel { get; set; }

        [Action ("EventsButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void EventsButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("NewEventButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void NewEventButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("NotificationButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void NotificationButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("ProfileButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void ProfileButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("SettingsButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SettingsButton_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (EventsButton != null) {
                EventsButton.Dispose ();
                EventsButton = null;
            }

            if (EventsTableView != null) {
                EventsTableView.Dispose ();
                EventsTableView = null;
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

            if (NewEventButton != null) {
                NewEventButton.Dispose ();
                NewEventButton = null;
            }

            if (NotificationButton != null) {
                NotificationButton.Dispose ();
                NotificationButton = null;
            }

            if (ProfileButton != null) {
                ProfileButton.Dispose ();
                ProfileButton = null;
            }

            if (ProfileImageView != null) {
                ProfileImageView.Dispose ();
                ProfileImageView = null;
            }

            if (SettingsButton != null) {
                SettingsButton.Dispose ();
                SettingsButton = null;
            }

            if (UserNameLabel != null) {
                UserNameLabel.Dispose ();
                UserNameLabel = null;
            }
        }
    }
}