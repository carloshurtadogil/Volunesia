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
                alert.AddAction(UIAlertAction.Create("Edit", UIAlertActionStyle.Default, (handler) =>
                {
                    Show(inpView, "To be implemented", "");
                }));

                if(comparison == 0)
                {
                    alert.AddAction(UIAlertAction.Create("Take Attendance", UIAlertActionStyle.Default, (handler) => 
                    {
                        Show(inpView, "To be implemented", "");
                    })); 
                }
                alert.AddAction(UIAlertAction.Create("Cancel", UIAlertActionStyle.Cancel, null));
                inpView.PresentViewController(alert, true, null);
            }
        }

        /// <summary>
        /// Print a message to the console
        /// </summary>
        /// <param name="msg">The message to be displayed.</param>
        public static void Print(string msg)
        {
            System.Diagnostics.Debug.WriteLine(msg); 
        }
    }
}
