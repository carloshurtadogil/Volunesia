using System;
using System.IO;
using Foundation;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class ImageStorageHandler
    {
        static readonly string MainPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);

        public static void WriteImage(UIImage image, string id)
        {
            string filename = id + ".jpg";
            string imagepath = Path.Combine(MainPath, filename);
            NSData data = image.AsJPEG();
            NSError err = null;
            var img = UIImage.FromFile(filename);
            data.Save(imagepath, false, out err);
        }

        public static void LoadImage(UIViewController inpView, UIImageView imageview, string id)
        {
            string filename = id + ".jpg";
            string imagepath = Path.Combine(MainPath, filename);
            //UIImage image = UIImage.LoadFromData(imagepath);

            UIImage image = null;
            using (var url = new NSUrl(imagepath))
            using (var data = NSData.FromUrl(url))
                image = UIImage.LoadFromData(data);
            if (image == null)
            {
                AlertShow.Show(inpView, "Null Image", ""); 
            }
            else
            {
                imageview.Image = image; 
            }
        }


    }
}
