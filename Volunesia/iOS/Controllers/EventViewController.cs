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
        public bool Attended { get; set; }
        public UIImage CoverPhoto { get; set; }
        public Nonprofit Nonprofit { get; set; }


        public EventViewController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            if (EventDetails != null)
            {
                if (EventDetails.EventImagePath != "standard")
                {
                    if (JustCreated)
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
                if (formattedEventDate.Length > 0)
                {
                    EventDate.Text = formattedEventDate;
                }
                EventDescriptionTextView.Text = EventDetails.EventDescription;
                FirebaseReader.ReadNPName(EventDetails.HostID, NonprofitNameLabel);

            }


            if (AppData.CurUser.UserType == "NP" && AppData.NonprofitRepresentative != null)//Evaluate if the user is a nonprofit representative
            {
                if (AppData.NonprofitRepresentative.AssociatedNonprofit == EventDetails.HostID && AppData.NonprofitRepresentative.Poster == "Y")// Evaluate if the user has the proper permissions to edit
                {
                    EditButton.Enabled = true; 
                    EditButton.Hidden = false;
                    ContactEmailLabel.Text = AppData.CurUser.EmailAddress;
                    string formattedEventDate = DateFormatter.FormatEventTimeTextfield(AppData_iOS.EventDate);
                    if (formattedEventDate.Length > 0)
                    {
                        EventDate.Text = formattedEventDate;
                    }
                    //Enabled = true;
                    //SignupButton.Hidden = false;
                }
            }
            else //The user is a normal volunteer
            {
                NonprofitProfileButton.Enabled = true;
                NonprofitProfileButton.Hidden = false;
                if(Attended) 
                {
                    SignupButton.Enabled = false;
                    SignupButton.Hidden = true;
                    LeaveButton.Enabled = false;
                    LeaveButton.Enabled = true;
                    AlertShow.Show(this, "You have already attended this event", "");
                }
                else
                {

                    var futureevents = AppData_iOS.VolunteerEventsToBeAttended;
                    if (futureevents != null && AppData_iOS.CheckIfExists(futureevents, EventDetails)) // Check if event details exist 
                    {
                        SignupButton.Enabled = false;
                        SignupButton.Hidden = true;
                    }
                    else
                    {
                        SignupButton.Enabled = true;
                        SignupButton.Hidden = false;
                    }
                    FirebaseReader.ReadContactEmail(EventDetails.HostID, ContactEmailLabel);
                    FirebaseReader.CheckVolunteerHistory(AppData.CurUser.UID, EventDetails.EventID, SignupButton, LeaveButton);
                }
            }
        }


        /// <summary>
        /// Lead a volunteer to the nonprofit profile page
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void NonprofitProfileButton_TouchUpInside(UIButton sender)
        {
            FirebaseReader.ReadNonprofitInformation(this, EventDetails.HostID);
        }

        /// <summary> 
        /// Prepares for segue. 
        /// </summary> 
        /// <param name="segue">Segue.</param> 
        /// <param name="sender">Sender.</param> 
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if (segue.Identifier == "ToNonprofitVCSegue_id")
            {
                var npvc = (NPProfileViewController)segue.DestinationViewController;
                if (npvc != null)
                {
                    npvc.LoadView();
                }
            }
            else if (segue.Identifier == "ToRVCSegue_id")
            {
                var rvc = (RosterViewController)segue.DestinationViewController;
                if (rvc != null)
                {
                    rvc.EventDetails = EventDetails;
                    rvc.LoadView();
                }
            }
            else if (segue.Identifier == "ToNPProfileSegue_id")
            {
                var nptpvc = (NPTempProfileViewController)segue.DestinationViewController; 
                if(nptpvc != null)
                {
                    nptpvc.PrimaryEmail = ContactEmailLabel.Text;
                    nptpvc.NonprofitOrg = Nonprofit;
                    nptpvc.LoadView();
                }
            }

        }

        /// <summary> 
        /// Event listener for the Signup Button 
        /// </summary> 
        /// <param name="sender">Sender.</param>
        partial void SignupButton_TouchUpInside(UIButton sender)
        {
            AlertShow.DisplaySignUpPrompt(this, EventDetails, SignupButton, LeaveButton);
        }

        /// <summary> 
        /// Event listener for the EditButton 
        /// </summary> 
        /// <param name="sender">Sender.</param>
        partial void EditButton_TouchUpInside(UIButton sender)
        {
            EventDetails.EventDate = DateTime.Today;
            AlertShow.DisplayEventOptions(this, EventDetails);
        }

        /// <summary> 
        /// Return to the previous screen depending on certain conditions 
        /// </summary> 
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            if (JustCreated)
            {
                this.PerformSegue("ToNonprofitVCSegue_id", sender);
            }
            else
            {

                this.DismissViewController(true, null);
            }
        }

        /// <summary>
        /// Leave the roster of an event
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void LeaveButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Print("Removing from event with details: \n NPID: " + EventDetails.HostID + "\n EID:  " + EventDetails.EventID);
            FirebaseReader.RemoveFromRoster(EventDetails.HostID, EventDetails.EventID, AppData.CurUser.UID);
            FirebaseReader.RemoveFromVolunteerHistory(AppData.CurUser.UID, EventDetails.EventID);
            VolunteerHistory h = AppData.FutureEvents;
            VolunteerEvent eve = h.GetVolunteerEvent(EventDetails.EventID);
            if(eve != null) 
            {
                AlertShow.Print(eve.EventID + " event is found in volunteer future events"); 
            }
            else
            {
                AlertShow.Print("Null volunteer event"); 
            }
            //FirebaseReader.Test(this, AppData.CurUser.UID, AppData.CurUser.EmailAddress);
        }
    }
}