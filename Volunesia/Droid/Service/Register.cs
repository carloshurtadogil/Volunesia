using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Firebase.Database.Query;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Service
{
    public class Register
    {
        //Adds the user to Firebase 
        public void AddUserToFirebase(User theUser)
        {

            Dictionary<string, string> userDictionary = new Dictionary<string, string>();
            userDictionary.Add("email", theUser.EmailAddress);
            userDictionary.Add("first", theUser.FirstName);
            userDictionary.Add("last", theUser.LastName);
            userDictionary.Add("type", theUser.UserType);

            AppData_Droid.UserNode.Child(theUser.UID).PutAsync(userDictionary);
        }

        //Adds the nonprofit organization to Firebase
        public void AddNonprofitOrganizationToFirebase(Dictionary<string, string> newNonprofit)
        {
            //Generate a general ID for a nonprofit
            IDGenerator generator = new IDGenerator();
            string generatedID = generator.GenerateEstablishedID(newNonprofit["ein"]);

            AppData_Droid.NonprofitNode.Child(generatedID).PutAsync(newNonprofit);

        }
    }
}