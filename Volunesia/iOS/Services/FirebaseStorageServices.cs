using System;
using Firebase.Storage;
using Foundation;
using UIKit;

namespace Volunesia.iOS.Services
{
    public class FirebaseStorageServices
    {
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
    }
}
