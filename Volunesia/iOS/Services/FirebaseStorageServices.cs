using System;
using Firebase.Storage;
using Foundation;

namespace Volunesia.iOS.Services
{
    public class FirebaseStorageServices
    {
        public static void AddImageToFirebase(NSData data, string path)
        {
            if(data != null)
            {
                AlertShow.Print("Uploading");
                StorageReference reference = AppData_iOS.StorageRootReference.GetChild(path);
                var imageMetadata = new StorageMetadata { ContentType = "image/jpeg" };
                StorageUploadTask uploadTask = reference.PutData(data, imageMetadata, (metadata, error) =>
                {
                    if (error != null)
                    {
                        // Uh-oh, an error occurred!
                        AlertShow.Print("Error occurred during upload");
                        return;
                    }
                    AlertShow.Print("Uploaded");
                });
            }
            else
            {
                AlertShow.Print("FirebaseStorageServers/AddImageToFirebase/Null Data"); 
            }

        }
    }
}
