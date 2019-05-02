using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public static class AlertShow
    {
        /// <summary>
        /// Display simple message to user
        /// </summary>
        /// <param name="inpView">the ViewController that the user is currently on</param>
        /// <param name="title">the bolded message title</param>
        /// <param name="message">The simple message for user</param>
        public static void Show(UIViewController inpView, string title, string message)
        {
            UIAlertController alert = UIAlertController.Create(title, message, UIAlertControllerStyle.Alert);
            alert.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));
            inpView.PresentViewController(alert, true, null);
        }

        /// <summary>
        /// Display simple message to user and dismiss view controller
        /// </summary>
        /// <param name="inpView">Viewcontroller that the user is currently seeing</param>
        /// <param name="dismiss">If set to <c>true</c>, dismiss the current view controller dismiss.</param>
        /// <param name="title">the bolded message title</param>
        /// <param name="message">the simple message for user</param>
        public static void Show(UIViewController inpView, bool dismiss, string title, string message)
        {
            UIAlertController alert = UIAlertController.Create(title, message, UIAlertControllerStyle.Alert);
            alert.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, (handler) => 
            {
                if(dismiss)
                {
                    inpView.DismissViewController(dismiss, null);
                }
            }));
            inpView.PresentViewController(alert, true, null);
        }

        /// <summary>
        /// Present this prompt to the volunteer
        /// </summary>
        /// <param name="inpView">The view controller that will include the prompt.</param>
        public static void DisplaySignUpPrompt(UIViewController inpView, Event e, UIButton su, UIButton leave) 
        {
            UIAlertController alert = UIAlertController.Create("You are about to make a difference", "Are you ready?", UIAlertControllerStyle.Alert);

            alert.AddAction(UIAlertAction.Create("No", UIAlertActionStyle.Default, null));
            alert.AddAction(UIAlertAction.Create("Yes", UIAlertActionStyle.Default, (handler) => 
            {
                FirebaseReader.WriteToRoster(inpView, e.HostID, e.EventID, AppData.CurUser);
                //Disable and hide signup button
                su.Enabled = false;
                su.Hidden = true;
                //Enable and show 
                leave.Enabled = true;
                leave.Hidden = false;
            }));


            inpView.PresentViewController(alert, true, null);
        }

        /// <summary>
        /// For nonprofits to make changes to an event or take attendance
        /// </summary>
        /// <param name="inpView">Inp view.</param>
        /// <param name="e">Event being worked on.</param>
        public static void DisplayEventOptions(UIViewController inpView, Event e)
        {
            UIAlertController alert = UIAlertController.Create("Options for this Event", "", UIAlertControllerStyle.ActionSheet);

            DateTime eventdate = e.EventDate;
            DateTime today = DateTime.Today;
            var comparison = DateTime.Compare(eventdate, today);

            if(comparison >= 0) 
            {
                /*
                alert.AddAction(UIAlertAction.Create("Edit", UIAlertActionStyle.Default, (handler) =>
                {
                    Show(inpView, "To be implemented", "");
                }));*/

                if (e.EventRoster != null && e.EventRoster.Size() > 0)
                {

                    alert.AddAction(UIAlertAction.Create("View Roster", UIAlertActionStyle.Default, (handler) => 
                    {
                        inpView.PerformSegue("ToRVCSegue_id", alert);
                    })); 
                }
                alert.AddAction(UIAlertAction.Create("End Event", UIAlertActionStyle.Destructive, (handler)=> 
                {
                    EndEvent(inpView, e.EventID);
                }));
                alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
                inpView.PresentViewController(alert, true, null);
            }
        }

        /// <summary>
        /// Allow user to input an email to send a password reset email
        /// </summary>
        /// <param name="inpView">Inp view.</param>
        public static void DisplayEmailPrompt(UIViewController inpView) 
        {
            UIAlertController alert = UIAlertController.Create("Please enter email to send a password reset", "", UIAlertControllerStyle.Alert);

            alert.AddTextField((obj) => {});
            alert.AddAction(UIAlertAction.Create("Send", UIAlertActionStyle.Default, (handler) => 
            {
                if(alert.TextFields != null)
                {
                    Print(alert.TextFields[0].Text);
                    string email = alert.TextFields[0].Text;
                    if ((email.Length > 3 ) && (email.Contains(".com") || email.Contains(".co") || email.Contains(".gov") || email.Contains(".edu")))
                    {
                        AppData_iOS.Auth.SendPasswordReset(alert.TextFields[0].Text, (error) =>
                        {
                            if (error != null)
                            {
                                Show(inpView, "Update Error", "Unable to send password reset email");
                            }
                            else
                            {
                                Show(inpView, true, "Password reset email sent", "");
                            }
                        });
                    }
                    else 
                    {
                        Show(inpView, "Invalid Email", ""); 
                    }
                }
            }));
            alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
            inpView.PresentViewController(alert, true, null);
        }

        /// <summary>
        /// Allow user to confirm that a volunteer is absent in the event that the volunteer was marked present accidentally.
        /// </summary>
        /// <param name="inpView">Inp view.</param>
        /// <param name="roster">Roster with volunteer's information</param>
        /// <param name="i">Index location of volunteer in roster</param>
        /// <param name="npid">Npid.</param>
        /// <param name="eid">Eid.</param>
        public static void ConfirmAbsence(RosterViewController inpView, Roster roster, int i, string npid, string eid)
        {
            Attendee attendee = roster.GetAttendee(i);
            UIAlertController alert = UIAlertController.Create("You are about to mark " + attendee.Name + " as \'absent\'", "Would you like to proceed?", UIAlertControllerStyle.Alert);
            alert.AddAction(UIAlertAction.Create("Proceed", UIAlertActionStyle.Destructive,(obj) => 
            {
                roster.GetAttendee(i).Attended = false;
                FirebaseReader.ChangeReservationStatus(npid, eid, attendee.UID, false, roster, inpView);
                inpView.GetTableView().ReloadData();
            }));
            alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
            inpView.PresentViewController(alert, true, null);
        }

        /// <summary>
        /// Alert to ask user for permission to access maps.
        /// </summary>
        /// <param name="inpView">Inp view.</param>
        /// <param name="address">Address.</param>
        public static void PermissionToAccessMaps(UIViewController inpView, string address)
        {
            UIAlertController alert = UIAlertController.Create("Volunesia would like to open Maps", "", UIAlertControllerStyle.Alert);

            alert.AddAction(UIAlertAction.Create("Proceed", UIAlertActionStyle.Default, (handler) =>
            {
#pragma warning disable CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
                AddressHandler.OpenMapsWithAddressAsync(inpView, address);
#pragma warning restore CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            }));
            alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
            inpView.PresentViewController(alert, true, null);
        }

        /// <summary>
        /// Print a message to the console
        /// </summary>
        /// <param name="msg">The message to be displayed.</param>
        public static void Print(string msg)
        {
            System.Diagnostics.Debug.WriteLine(msg); 
        }

        /// <summary>
        /// Private method that asks nonprofit representative to confirm that the event has been closed.
        /// </summary>
        /// <param name="inpView">Inp view.</param>
        /// <param name="eid">Eid.</param>
        private static void EndEvent(UIViewController inpView, string eid)
        {
            UIAlertController alert = UIAlertController.Create("You are about to end this event", 
                                                               "Be aware that this action is unreversible. If the event is upcoming, this action will cancel and inform all volunteers who have signed up", 
                                                               UIAlertControllerStyle.Alert);
            alert.AddAction(UIAlertAction.Create("Proceed", UIAlertActionStyle.Destructive, (obj) =>
            {
                Show(inpView, "to be implemented", "");
            }));
            alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
            inpView.PresentViewController(alert, true, null);
        }
    }
}
