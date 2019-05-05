using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class MissionStatementViewController : UIViewController
    {

        //For accessing user's image gallery
        UIImagePickerController picker;


        public string NPName    { get; set; }
        public string EIN       { get; set; }
        public string Phone     { get; set; }
        public string Zip       { get; set; }
        public string City      { get; set; }
        public string State     { get; set; }
        public string NPType    { get; set; }
        public User CurrentUser { get; set; }
        public string Password  { get; set; }
        public string CurrentImage { get; set; }


        public MissionStatementViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            DismissKeyboardHandler();
        }

        //Prepare for welcome page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            AppData.CurUser = null;
            AppData.NonprofitRepresentative = null;
            AppData.CurVolunteer = null;
            Register r = new Register();
            r.NPName = NPName;
            r.EIN = EIN;
            r.Phone = Phone;
            r.Zip = Zip;
            r.City = City;
            r.State = State;
            r.NPType = NPType;
            string personal = StoryTextView.Text.Trim();
            if (personal.Length == 0)
            {
                personal = " ";
            }
            r.MissionStatement = personal;


            r.CreateUser(CurrentUser, Password, this, null, "MSToWelcomeSegue_id");
        }

        //Register nonproift to Firebase
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "MSToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if (wvc != null)
                {

                    wvc.JustCreated = true;
                    wvc.CurrUser = CurrentUser;
                    wvc.LoadView();
                }
            }
        }

        //Return to previous page
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        /// <summary>
        /// Allow nonprofit representatives to upload an image
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void UploadImageButton_TouchUpInside(UIButton sender)
        {
            AlertShow.Print("About to upload profile image");
            picker = new UIImagePickerController();
            picker.SourceType = UIImagePickerControllerSourceType.PhotoLibrary;
            picker.MediaTypes = UIImagePickerController.AvailableMediaTypes(UIImagePickerControllerSourceType.PhotoLibrary);
            picker.FinishedPickingMedia += Finished;
            picker.Canceled += Canceled;
            PresentViewController(picker, animated: true, completionHandler: null);
        }

        /// <summary>
        /// Update the UI with selected photo and dismiss the modal view controller
        /// </summary>
        /// <param name="sender">Sender.</param>
        /// <param name="e">E.</param>
        public void Finished(object sender, UIImagePickerMediaPickedEventArgs e)
        {
            CurrentImage = "standard";
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
                    AlertShow.Print("Good");
                    NonprofitProfileImage.Image = originalImage;

                    CurrentImage = "/Images/nonprofiteventimages/";
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

        /// <summary>
        /// Dismiss picker view 
        /// </summary>
        /// <param name="sender">Sender.</param>
        /// <param name="e">E.</param>
        void Canceled(object sender, EventArgs e)
        {
            picker.DismissModalViewController(true);
        }

        /// <summary>
        /// Dismiss any keyboards with a click on the current view controller
        /// </summary>
        private void DismissKeyboardHandler()
        {
            var g = new UITapGestureRecognizer(() => View.EndEditing(true));
            g.CancelsTouchesInView = false; //for iOS5

            View.AddGestureRecognizer(g);
        }
    }
}