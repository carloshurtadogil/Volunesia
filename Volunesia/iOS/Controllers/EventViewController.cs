using Foundation;
using System;
using System.Threading.Tasks;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;
using Xamarin.Essentials;

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
            //FirebaseReader.WriteNewAttribute();
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
                AlertShow.Print("Location: " + EventDetails.Location);
                LocationTextLabel.Text = EventDetails.Location;
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
                var today = DateTime.Now;
                var edate = EventDetails.EventDate;
                AlertShow.Print("Ended flag  is: " + EventDetails.Ended + " " + EventDetails.EventID);
                int result = DateTime.Compare(edate, today);
                if(result < 0 || EventDetails.Ended)
                {
                    AlertShow.Print("Cur ID: " + AppData.CurUser.UID);
                    FirebaseReader.CheckAttendedStatus(SendCertificateButton, EventDetails);
                }
                else
                {
                    AlertShow.Print("Event ("+EventDetails.EventName+") is still open");
                    if (Attended)
                    { 
                        SignupButton.Enabled = false;
                        SignupButton.Hidden = true;
                        LeaveButton.Enabled = true;
                        LeaveButton.Hidden = false;

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
                FirebaseReader.ReadContactEmail(EventDetails.HostID, ContactEmailLabel);
            }
            LoadGestureRecognizers();
        }

        /// <summary>
        /// Sends the certificate button touch up inside.
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void SendCertificateButton_TouchUpInside(UIButton sender)
        {
            string npname = NonprofitNameLabel.Text;
            string contact = ContactEmailLabel.Text;
            EmailHandler.SendCertificate(this, EventDetails, npname, contact);
        }

        /// <summary>
        /// Loads the gesture recognizers.
        /// </summary>
        public void LoadGestureRecognizers()
        {
            UITapGestureRecognizer labelTap = new UITapGestureRecognizer(() => {
#pragma warning disable CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
                AlertShow.PermissionToAccessMaps(this, EventDetails.Location);
#pragma warning restore CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            });

            UITapGestureRecognizer emailTap = new UITapGestureRecognizer(() =>
            {
#pragma warning disable CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
                AlertShow.PermissionToAccessEmailApp(this, ContactEmailLabel.Text);
#pragma warning restore CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            });

            LocationTextLabel.UserInteractionEnabled = true;
            LocationTextLabel.AddGestureRecognizer(labelTap);
            ContactEmailLabel.UserInteractionEnabled = true;
            ContactEmailLabel.AddGestureRecognizer(emailTap);
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
                    //EmailHandler.SendCancelEmail(this,EventDetails, NonprofitNameLabel.Text, ContactEmailLabel.Text);
                    nptpvc.PrimaryEmail = ContactEmailLabel.Text;
                    Nonprofit.NonprofitName = NonprofitNameLabel.Text;
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
            AlertShow.LeaveEvent(this, SignupButton, LeaveButton, EventDetails);
        }

        /// <summary>
        /// Allow the user to copy the address to the clipboard
        /// </summary>
        /// <returns>The add to clipboard.</returns>
        private async Task AwaitAddToClipboard()
        {
            await Clipboard.SetTextAsync(EventDetails.Location);
            AlertShow.Show(this, "Address has been copied to clipboard", "");
        }
    }
}