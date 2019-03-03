using Foundation;
using System;
using System.Globalization;
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
                View.ResignFirstResponder();
                this.PerformSegue("ToDatePickerSegue_id", this);
            };

            LocationTextfield.EditingDidBegin += (sender, e) => 
            {
                LocationTextfield.ResignFirstResponder();
                //this.PerformSegue("ToLocationSegue_id", this);
            };

            DismissKeyboardHandler();

            FormatEventTimeTextfield();


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
                var dpvc = (DateSelectionViewController)segue.DestinationViewController;
                if(dpvc != null)
                {
                    dpvc.EventInfoVC = this;
                    dpvc.LoadView();
                }
            }
        }

        public void FormatEventTimeTextfield()
        {
            if (EventDateTime.ToString() != "1/1/0001 12:00:00 AM")
            {
                DateTime now = DateTime.Now;
                string msg = "";
                if (EventDateTime.Day == now.Day && EventDateTime.Month == now.Month && EventDateTime.Year == now.Year)
                {
                    msg += "Today at ";
                }
                else
                {
                    string mon = DateTimeFormatInfo.CurrentInfo.GetAbbreviatedMonthName(EventDateTime.Month);
                    msg += (mon + " " + EventDateTime.Day + " ");
                }


                int h = EventDateTime.Hour;
                if (h > 12)
                {
                    h -= 12;
                }

                msg += h.ToString();

                if (EventDateTime.Minute == 0)
                {
                    msg += " ";
                }
                else
                {
                    if (EventDateTime.Minute < 10)
                    {
                        msg += (":0" + EventDateTime.Minute.ToString() + " ");
                    }
                    else
                    {
                        msg += (":" + EventDateTime.Minute.ToString() + " ");
                    }
                }

                msg += EventDateTime.ToString("tt", CultureInfo.InvariantCulture);

                EventTimeTextfield.Text = msg;
            }
        }

    }
}