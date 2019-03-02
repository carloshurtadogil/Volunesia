using System;
using UIKit;

namespace Volunesia.iOS
{
    public static class AlertShow
    {
        /*
         * Display simple message to user
         * @inpView the ViewController that the user is currently on
         * @title the bolded message title
         * @message The simple message for user
         */
        public static void Show(UIViewController inpView, string title, string message)
        {
            UIAlertController alert = UIAlertController.Create(title, message, UIAlertControllerStyle.Alert);
            alert.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));
            inpView.PresentViewController(alert, true, null);
        }

        /**
         * Display simple message to user and dismiss view controller
         * @inpView Viewcontroller that the user is currently seeing
         * @dismiss Flag to dismiss the current view controller        
         * @title the bolded message title
         * @message the simple message for user
         */
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

        public static void Print(string msg)
        {
            System.Diagnostics.Debug.WriteLine(msg); 
        }
    }
}
