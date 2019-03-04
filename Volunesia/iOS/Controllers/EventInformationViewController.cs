using Foundation;
using System;
using System.Globalization;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class EventInformationViewController : UIViewController
    {

        //For accessing user's image gallery
        UIImagePickerController picker;

        public string Picker { get; set; }
        public UIImage CoverPhoto;
        public DateTime EventDateTime { get; set; }
        public DateTime DeadlineDateTime { get; set; }

        public EventInformationViewController (IntPtr handle) : base (handle)
        {
        }

        //Check and add new event to database
        partial void SubmitButton_TouchUpInside(UIButton sender)
        {
            string eventname = EventNameTextfield.Text.Trim();
            string eventdesc = EventDescriptionTextView.Text.Trim();
            string dt = EventTimeTextfield.Text.Trim();
            string location = LocationTextfield.Text.Trim();
            string applicationdeadline = DeadlineTextfield.Text.Trim();
            string hasdeadline = "N";
            if(AppDeadlineSwitch.On)
            {
                hasdeadline = "Y"; 
            }

            if (eventname.Length > 1)
            {
                if(eventdesc.Length > 1)
                { 
                    if(dt.Length > 1)
                    {
                        if (location.Length > 1)
                        {
                            AlertShow.Show(this, "Good to go", "");
                            IDGenerator generator = new IDGenerator();
                            string id = generator.GenerateID();
                            Event e = new Event
                            {
                                EventID = id,
                                HasDeadline = hasdeadline,
                                EventDate = EventDateTime,
                                HostID = AppData.NonprofitRepresentative.AssociatedNonprofit,
                                EventName = eventname,
                                EventImagePath = "standard",
                                EventDescription = eventdesc,
                                EventRoster = null,
                                EventCategories = null,
                                Waitlist = null

                            };
                            if (AppDeadlineSwitch.On)
                            {
                                e.ApplicationDeadline = DeadlineDateTime;
                            }
                            if (CoverPhoto != null)
                            {
                                e.EventImagePath = "/Images/nonprofiteventimages/" + id;
                                e.CoverPhoto = CoverPhoto;
                            }
                        }
                        else
                        {
                            AlertShow.Show(this, "Empty Location", "Please inform potential volunteers of where your event is to take place"); 
                        }
                    }
                    else
                    {
                        AlertShow.Show(this, "Empty Event Date", "Please inform potential volunteers of when your event is to take place"); 
                    }
                }
                else
                {
                    AlertShow.Show(this, "Empty Event Description", "Please inform potential volunteers about your event"); 
                }
            }
            else
            {
                AlertShow.Show(this, "Empty Event Name", "Please enter the name of your event"); 
            }
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

            CoreGraphics.CGSize cg = new CoreGraphics.CGSize 
            {
                Width = 375,
                Height = 1100
            };

            ScrollView.ContentSize = cg;

            EventTimeTextfield.EditingDidBegin += (sender, e) => 
            {
                View.ResignFirstResponder();
                Picker = "time";
                this.PerformSegue("ToDatePickerSegue_id", this);
            };

            LocationTextfield.EditingDidBegin += (sender, e) => 
            {
                LocationTextfield.ResignFirstResponder();
                LocationTextfield.Text = "23121 Schultze Drive, Cerritos, CA 9080";
                //this.PerformSegue("ToLocationSegue_id", this);
            };

            DeadlineTextfield.EditingDidBegin += (sender, e) => 
            {
                LocationTextfield.ResignFirstResponder();
                Picker = "deadline";
                this.PerformSegue("ToDatePickerSegue_id", this);
            };

            DismissKeyboardHandler();

            FormatEventTimeTextfield(EventDateTime, 1);
            FormatEventTimeTextfield(DeadlineDateTime, 2);


        }

        //Prepare to transfer to the next view
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
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

        public void FormatEventTimeTextfield(DateTime e, int i)
        {
            if (e.ToString() != "1/1/0001 12:00:00 AM")
            {
                DateTime now = DateTime.Now;
                string msg = "";
                if (e.Day == now.Day && e.Month == now.Month && e.Year == now.Year)
                {
                    msg += "Today at ";
                }
                else
                {
                    string mon = DateTimeFormatInfo.CurrentInfo.GetAbbreviatedMonthName(e.Month);
                    msg += (mon + " " + e.Day + " at ");
                }


                int h = e.Hour;
                if (h > 12)
                {
                    h -= 12;
                }

                msg += h.ToString();

                if (e.Minute == 0)
                {
                    msg += " ";
                }
                else
                {
                    if (e.Minute < 10)
                    {
                        msg += (":0" + e.Minute.ToString() + " ");
                    }
                    else
                    {
                        msg += (":" + e.Minute.ToString() + " ");
                    }
                }

                msg += e.ToString("tt", CultureInfo.InvariantCulture);

                if(i == 1)
                {
                    EventTimeTextfield.Text = msg;
                }
                else
                {
                    DeadlineTextfield.Text = msg; 
                }
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

        partial void DeadlineToggled(UISwitch sender)
        {
            if(sender.On)
            {
                DeadlineTextfield.Hidden = false; 
            }
            else
            {
                DeadlineTextfield.Hidden = true; 
            }
        }
    }
}