using Foundation;
using System;
using UIKit;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class EventInformationViewController : UIViewController
    {

        public DateTime EventDateTime { get; set; }

        public EventInformationViewController (IntPtr handle) : base (handle)
        {
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

            EventTimeTextfield.EditingDidBegin += (sender, e) => 
            {
                EventTimeTextfield.ResignFirstResponder();
                this.PerformSegue("ToDatePickerSegue_id", this);
            };

            LocationTextfield.EditingDidBegin += (sender, e) => 
            {
                LocationTextfield.ResignFirstResponder();
                this.PerformSegue("ToLocationSegue_id", this);
            };

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
                    string name = EventNameTextfield.Text.Trim();
                    string desc = EventDescriptionTextView.Text.Trim();
                    Event npevent = new Event
                    {
                        EventName = name,
                        EventDescription = desc

                    };
                    eivc.LoadView(); 
                }
            }
            else if(segue.Identifier == "ToDatePickerSegue_id")
            {
                var dpvc = (DatePickerViewController)segue.DestinationViewController;
                if(dpvc != null)
                {
                    dpvc.EventInfoVC = this;
                    dpvc.LoadView();
                }
            }
            else if(segue.Identifier == "ToLocationSegue_id")
            {
                var lvc = (LocationViewController)segue.DestinationViewController;
                if(lvc != null)
                {
                    lvc.LoadView(); 
                }
            }
        }

    }
}