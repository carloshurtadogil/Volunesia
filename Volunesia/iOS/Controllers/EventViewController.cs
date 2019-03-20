using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class EventViewController : UIViewController
    {
        public Event EventDetails { get; set; }
        public bool JustCreated { get; set; }
        public UIImage CoverPhoto { get; set; }

        public EventViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            if(EventDetails != null)
            {
                if(EventDetails.EventImagePath != "standard")
                {
                    if(JustCreated)
                    {
                        CoverPhotoImageView.Image = CoverPhoto;
                    }
                    else
                    {
                        AlertShow.Print("Searching");
                        FirebaseStorageServices.RetrieveImage(EventDetails.EventImagePath, CoverPhotoImageView);
                    }
                }

                NonprofitNameLabel.Text = "";
                EventNameLabel.Text = EventDetails.EventName;
                string formattedEventDate = DateFormatter.FormatEventTimeTextfield(EventDetails.EventDate);
                if(formattedEventDate.Length > 0) 
                {
                    EventDate.Text = formattedEventDate;
                }
                EventDescriptionTextView.Text = EventDetails.EventDescription;
                FirebaseReader.ReadContactEmail(EventDetails.HostID, ContactEmailLabel);
            }


            if (AppData.CurUser.UserType == "NP" && AppData.NonprofitRepresentative != null)//Evaluate if the user is a nonprofit representative
            {
                if (AppData.NonprofitRepresentative.AssociatedNonprofit == EventDetails.HostID && AppData.NonprofitRepresentative.Poster == "Y")// Evaluate if the user has the proper permissions to edit
                {
                    //EditButton.Enabled = true;
                    //EditButton.Hidden = false;

                    SignupButton.Enabled = true;
                    SignupButton.Hidden = false;
                }
            }
            else //The user is a normal volunteer
            {
                SignupButton.Enabled = true;
                SignupButton.Hidden = false;
            }
        }

        /// <summary>
        /// Prepares for segue.
        /// </summary>
        /// <param name="segue">Segue.</param>
        /// <param name="sender">Sender.</param>
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "ToNonprofitVCSegue_id")
            {
                var npvc = (NPProfileViewController)segue.DestinationViewController;
                if(npvc != null)
                {
                    npvc.LoadView(); 
                }
            }
        }

        /// <summary>
        /// Event listener for the Signup Button
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void SignupButton_TouchUpInside(UIButton sender)
        {
            AlertShow.DisplaySignUpPrompt(this, EventDetails);
        }

        /// <summary>
        /// Event listener for the EditButton
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void EditButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Show(this, "To be implemented", "");
        }

        /// <summary>
        /// Return to the previous screen depending on certain conditions
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            if(JustCreated)
            {
                this.PerformSegue("ToNonprofitVCSegue_id", sender); 
            }
            else
            {
                this.DismissViewController(true, null); 
            }
        }
    }
}