using Firebase.Storage;
using Foundation;
using System;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Services;

namespace Volunesia.iOS
{
    public partial class EventImageViewController : UIViewController
    {
        //For accessing user's image gallery
        UIImagePickerController picker;

        public EventImageViewController (IntPtr handle) : base (handle)
        {
        }

        //Return to the previous View Controller
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        //Allow users to upload a photo
        partial void UploadImageButton_TouchUpInside(UIButton sender)
        {
            picker = new UIImagePickerController();
            picker.SourceType = UIImagePickerControllerSourceType.PhotoLibrary;
            picker.MediaTypes = UIImagePickerController.AvailableMediaTypes(UIImagePickerControllerSourceType.PhotoLibrary);
            picker.FinishedPickingMedia += Finished;
            picker.Canceled += Canceled;
            PresentViewController(picker, animated: true, completionHandler: null);
        }

        //Return to Nonprofit Home View Controller
        private void OnSwipe()
        {
            AlertShow.Print("OnSwip() Called");
            this.PerformSegue("CancelToNPHomeSegue_id", this);
        }

        //Prepare to move to next or previous view controllers
        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if(segue.Identifier == "CancelToNPHomeSegue_id")
            {
                var nphvc = (NPProfileViewController)segue.DestinationViewController;
                if(nphvc != null)
                {
                    nphvc.LoadView(); 
                }
            }
        }

        //Activate fields and buttons
        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            UISwipeGestureRecognizer recognizer = new UISwipeGestureRecognizer(OnSwipe);
            recognizer.Direction = UISwipeGestureRecognizerDirection.Down;
            View.AddGestureRecognizer(recognizer);
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
                NSData d = originalImage.AsPNG();

                IDGenerator g = new IDGenerator();
                string id = g.GenerateID();
                string reference = "/Images/nonprofiteventimages/" + id;
                FirebaseStorageServices.AddImageToFirebase(d, reference);

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