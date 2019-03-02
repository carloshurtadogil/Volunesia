using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class EventInformationViewController : UIViewController
    {
        public EventInformationViewController (IntPtr handle) : base (handle)
        {
        }

        //Continue to the next view controller
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            if(EventNameTextfield.Text.Trim().Length > 0)
            {
                if(EventDescriptionTextView.Text.Trim().Length > 0)
                {
                    this.PerformSegue("ToEventImageSegue_id", sender);
                }
                else
                {
                    AlertShow.Show(this, "Event Description Required", ""); 
                }
            }
            else
            {
                AlertShow.Show(this, "Event Name Required", ""); 
            }
        }

        //Return to the previous view controller
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        //Dismiss any keyboards with a click on the current view controller
        private void DismissKeyboardHandler()
        {
            var g = new UITapGestureRecognizer(() => View.EndEditing(true));
            g.CancelsTouchesInView = false; //for iOS5

            View.AddGestureRecognizer(g);
        }

        //Activate fields and buttons
        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            DismissKeyboardHandler();
        }

        //Prepare to transfer to the next view
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            AlertShow.Print("Called");
            if(segue.Identifier == "ToEventImageSegue_id") 
            {
                var eivc = (EventImageViewController)segue.DestinationViewController;
                if(eivc != null)
                {
                    //eivc.LoadView(); 
                }
            }
        }

    }
}