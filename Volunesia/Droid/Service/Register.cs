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
            if(theUser.UserType == "V")
            {
                Dictionary<string, string> userDictionary = new Dictionary<string, string>();
                userDictionary.Add("email", theUser.EmailAddress);
                userDictionary.Add("first", theUser.FirstName);
                userDictionary.Add("last", theUser.LastName);
                userDictionary.Add("type", theUser.UserType);
                userDictionary.Add("personalstatement", theUser.PersonalStatement);

                AppData_Droid.UserNode.Child(theUser.UID).PutAsync(userDictionary);
                AppData.CurUser = theUser;
                //ReadWrite.WriteUser();
            }
            else if(theUser.UserType == "NP")
            {
                Dictionary<string, string> userDictionary = new Dictionary<string, string>();
                userDictionary.Add("email", theUser.EmailAddress);
                userDictionary.Add("first", theUser.FirstName);
                userDictionary.Add("last", theUser.LastName);
                userDictionary.Add("type", theUser.UserType);
                userDictionary.Add("personalstatement", "");

                AppData_Droid.UserNode.Child(theUser.UID).PutAsync(userDictionary);
                AppData.CurUser = theUser;
                //ReadWrite.WriteUser();
            }
            
        }

        //Adds the nonprofit organization to Firebase
        public void AddNonprofitOrganizationToFirebase(Dictionary<string, string> newNonprofit)
        {
            //Generate a general ID for a nonprofit
            IDGenerator generator = new IDGenerator();
            string generatedID = generator.GenerateID();
            

            AppData_Droid.NonprofitNode.Child(generatedID).PutAsync(newNonprofit);

        }
    }
}