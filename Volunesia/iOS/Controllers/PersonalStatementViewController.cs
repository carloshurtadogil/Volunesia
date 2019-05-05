using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;

namespace Volunesia.iOS
{
    public partial class PersonalStatementViewController : UIViewController
    {
        //For accessing user's image gallery
        UIImagePickerController picker;

        //User to be added to Firebase
        public User CurrentUser { get; set; }
        public string Password { get; set; }
        public string CurrentImage { get; set; }


        public PersonalStatementViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            DismissKeyboardHandler();
        }

        //Continue to welcome page
        partial void ContinueButton_TouchUpInside(UIButton sender)
        {

            NSData image = ProfileImageView.Image.AsPNG();
            Register r = new Register();
            string personal = StoryTextView.Text.Trim();
            r.NPType = "V";
            if (personal.Length == 0)
            {
                personal = " ";
            }
            r.MissionStatement = personal;
            r.CreateUser(CurrentUser, Password, this, image, "PSToWelcomeSegue_id");//create user before moving to next class
}

        //Prepare users and register
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if (segue.Identifier == "PSToWelcomeSegue_id")
            {
                var wvc = (WelcomeViewController)segue.DestinationViewController;
                if (wvc != null)
                {
                    wvc.CurrUser = CurrentUser;
                    AlertShow.Print("Current User Creation ID: " + CurrentUser.UID);
                    wvc.LoadView();
                }
            }
        }

        //Return to previous view
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        /// <summary>
        /// Allow the user to select a profile image to show to the world
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
                    ProfileImageView.Image = originalImage;

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