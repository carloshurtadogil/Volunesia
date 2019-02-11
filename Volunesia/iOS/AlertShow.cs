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
    }
}
