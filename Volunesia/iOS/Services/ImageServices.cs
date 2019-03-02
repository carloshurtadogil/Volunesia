using System;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class ImageServices
    {
        public UIViewController inpView { get; set; }//The view controller with the image view
        public UIImagePickerController picker { get; set; } //image picker to access photos
        public UIImageView image { get; set; }//Image to be updated
    }
}
