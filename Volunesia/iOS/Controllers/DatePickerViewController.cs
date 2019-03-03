using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class DatePickerViewController : UIViewController
    {
        public EventInformationViewController EventInfoVC { get; set; }

        public DatePickerViewController (IntPtr handle) : base (handle)
        {
        }

        //Return to the previoues view controller without saving anything
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        //Return to the previous view controller after saving information
        partial void OKButton_TouchUpInside(UIButton sender)
        {
            var d = DateTime.SpecifyKind((System.DateTime)DatePicker.Date, DateTimeKind.Utc).ToLocalTime();
            var t = DateTime.SpecifyKind((System.DateTime)TimePicker.Date, DateTimeKind.Utc).ToLocalTime();

            string dt = d.Month.ToString() + "/" + d.Day.ToString() + "/" + d.Year.ToString() + " " + t.ToLongTimeString();
            DateTime dateTime = DateTime.Parse(dt);
            EventInfoVC.EventDateTime = dateTime;
            this.DismissViewController(true, null);
        }
    }
}