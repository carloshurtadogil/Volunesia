using Foundation;
using System;
using System.Globalization;
using UIKit;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class EventInformationViewController : UIViewController
    {

        //For accessing user's image gallery
        UIImagePickerController picker;

        public DateTime EventDateTime { get; set; }

        public EventInformationViewController (IntPtr handle) : base (handle)
        {
        }

        //Add Image from device
        partial void UploadImageButton_TouchUpInside(UIButton sender)
        {
            picker = new UIImagePickerController();
            picker.SourceType = UIImagePickerControllerSourceType.PhotoLibrary;
            picker.MediaTypes = UIImagePickerController.AvailableMediaTypes(UIImagePickerControllerSourceType.PhotoLibrary);
            picker.FinishedPickingMedia += Finished;
            picker.Canceled += Canceled;
            PresentViewController(picker, animated: true, completionHandler: null);
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
                    msg += (mon + " " + EventDateTime.Day + " at ");
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

        //Dismiss picker view 
        void Canceled(object sender, EventArgs e)
        {
            picker.DismissModalViewController(true);
        }

        //Update the UI with selected photo and dismiss the modal view controller
        public void Finished(object sender, UIImagePickerMediaPickedEventArgs e)
        {
            bool isImage = false;
            switch (e.Info[UIImagePickerController.MediaType].ToString())
            {
                case "public.image":
                    isImage = true;
                    break;
                case "public.video":
                    break;
            }
            NSUrl referenceURL = e.Info[new NSString("UIImagePickerControllerReferenceUrl")] as NSUrl;
            if (referenceURL != null) AlertShow.Print("Url:" + referenceURL.ToString());
            if (isImage)
            {
                UIImage originalImage = e.Info[UIImagePickerController.OriginalImage] as UIImage;
                if (originalImage != null)
                {
                    CoverPhotoImageView.Image = originalImage;
                }


                //TO BE DELETED
                /**
                NSData d = originalImage.AsPNG();

                IDGenerator g = new IDGenerator();
                string id = g.GenerateID();
                string reference = "/Images/nonprofiteventimages/" + id;
                FirebaseStorageServices.AddImageToFirebase(d, reference);
                */
                //TO BE DELETED



            }
            else
            {
                NSUrl mediaURL = e.Info[UIImagePickerController.MediaURL] as NSUrl;
                if (mediaURL != null)
                {
                    AlertShow.Print(mediaURL.ToString());
                }
            }
            picker.DismissModalViewController(true);
        }

    }
}