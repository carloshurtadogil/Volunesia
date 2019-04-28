using System;
using Firebase.Storage;
using Foundation;
using System.Threading.Tasks;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class FirebaseStorageServices
    {
        /// <summary>
        /// Add an image to a specific directory in Firebase Storage.
        /// </summary>
        /// <param name="data">The Image being stored</param>
        /// <param name="path">The path to the specific directory in Firebase Storage</param>
        /// <param name="inpView">Input ViewController to display success/failure message </param>
        public static void AddImageToFirebase(NSData data, string path, UIViewController inpView)
        {
            if (data != null)
            {
                AlertShow.Print("Uploading");
                StorageReference reference = AppData_iOS.StorageRootReference.GetChild(path);
                var imageMetadata = new StorageMetadata { ContentType = "image/jpeg" };
                StorageUploadTask uploadTask = reference.PutData(data, imageMetadata, (metadata, error) =>
                {
                    if (error != null)
                    {
                        // Uh-oh, an error occurred!
                        AlertShow.Show(inpView, true, "Error in uploading image", "Please contact your developer");
                        return;
                    }
                    AlertShow.Show(inpView, true, "Event Created", "You are all set!");
                });
            }
            else
            {
                AlertShow.Print("FirebaseStorageServers/AddImageToFirebase/Null Data");
            }

        }


        /// <summary>
        /// Retrieve an image from a particular directory in Firebase Storage
        /// </summary>
        /// <returns>The specified image.</returns>
        /// <param name="path">The path to the specified image.</param>
        public static UIImage RetrieveImage(string path, UIImageView imageView)
        {
            //Create a reference to file to be downloaded
            StorageReference reference = AppData_iOS.StorageRootReference.GetChild(path);

            UIImage image = null;
            //Dowload in memory with maximum allowed size of 1MB (1 * 11024 * 1024 bytes)
            reference.GetData(50000000, (data, error) => 
            {
                if(error != null)
                {
                    AlertShow.Print(error.ToString());
                    //error has occurred
                    AlertShow.Print("Error retrieving image at \'" + path + "\'");
                    return;
                }
                AlertShow.Print("Reached");
                //Image data is returned
                imageView.Image = UIImage.LoadFromData(data);

            });
            AlertShow.Print("Returned");
            return image; 
        }
    }
}
