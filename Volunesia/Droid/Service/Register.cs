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
using FireSharp.Interfaces;
using FireSharp.Response;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Service
{
    public class Register
    {
        //Adds the user to Firebase 
        public void AddUserToFirebase(User theUser, string generatedNonprofitID)
        {
            if (theUser.UserType == "V")
            {
                Dictionary<string, object> userDictionary = new Dictionary<string, object>();
                userDictionary.Add("profileimg", "standard");
                userDictionary.Add("email", theUser.EmailAddress);
                userDictionary.Add("first", theUser.FirstName);
                userDictionary.Add("last", theUser.LastName);
                userDictionary.Add("type", theUser.UserType);
                userDictionary.Add("personalstatement", "");
                userDictionary.Add("level", 1);
                userDictionary.Add("xp", 0);
                userDictionary.Add("associatednp", "");

                AppData_Droid.UserNode.Child(theUser.UID).PutAsync(userDictionary);
                AppData.CurUser = theUser;
                AppData.CurVolunteer = new Volunteer()
                {
                    Level = 1,
                    Experience = 0,
                };
                AppData.VolunteerHistory = new VolunteerHistory();
                AppData.FutureEvents = new VolunteerHistory();

            }
            else if (theUser.UserType == "NP")
            {
                Dictionary<string, object> userDictionary = new Dictionary<string, object>();
                userDictionary.Add("profileimg", "standard");
                userDictionary.Add("email", theUser.EmailAddress);
                userDictionary.Add("first", theUser.FirstName);
                userDictionary.Add("last", theUser.LastName);
                userDictionary.Add("type", theUser.UserType);
                userDictionary.Add("personalstatement", "");
                userDictionary.Add("associatednp", generatedNonprofitID);
                userDictionary.Add("level", 0);
                userDictionary.Add("xp", 0);


                AppData_Droid.UserNode.Child(theUser.UID).PutAsync(userDictionary);
                AppData.CurUser = theUser;
                //ReadWrite.WriteUser();
            }

        }

        //Adds the nonprofit organization to Firebase, and returns generated id
        public string AddNonprofitOrganizationToFirebase(Dictionary<string, string> newNonprofit)
        {
            //Generate a general ID for a nonprofit
            IDGenerator generator = new IDGenerator();
            string generatedID = generator.GenerateID();


            AppData_Droid.NonprofitNode.Child(generatedID).PutAsync(newNonprofit);
            return generatedID;

        }

        /// <summary>
        /// Proceeds to call the method that will add a nonprofit rep to Firebase
        /// </summary>
        public void AddNonprofitRepToFirebase(string generatedIDForNonprofit, string npOrgName)
        {

            NonprofitRepresentative createdNPRep = new NonprofitRepresentative()
            {
                AssociatedNonprofit = generatedIDForNonprofit,
                AssociatedNonprofitName = npOrgName,
                Position = "mainuser",
                Poster = "Y",
                RepsManager = "Y",
                Reviewer = "Y"
            };

            AppData.NonprofitRepresentative = createdNPRep;
            AppData.NPEventsHistory = new NonprofitEventsHistory();


            var addNPRepToFB = System.Threading.Tasks.Task.Run(async () =>
            {

                await AddNonprofitRepToFirebaseAsync(generatedIDForNonprofit, npOrgName);

            });
        }

        /// <summary>
        /// Proceeds to call the method that will add a novice badge for a volunteer in Firebase
        /// </summary>
        public void AddNoviceBadgeToFirebase(User theUser)
        {
            var addNoviceBadgeToFB = System.Threading.Tasks.Task.Run(async () =>
            {

                return await AddNoviceBadgeToFirebaseAsync(theUser);

            });
        }


        /// <summary>
        /// Adds a nonprofit representative to Firebase
        /// </summary>
        /// <param name="generatedIDForNonprofit"></param>
        /// <param name="npOrgName"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task AddNonprofitRepToFirebaseAsync(string generatedIDForNonprofit, string npOrgName)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            Dictionary<string, string> nonprofitRepInformation = new Dictionary<string, string>();
            nonprofitRepInformation.Add("associatednpname", npOrgName);
            nonprofitRepInformation.Add("position", "mainuser");
            nonprofitRepInformation.Add("poster", "Y");
            nonprofitRepInformation.Add("repsmanager", "Y");
            nonprofitRepInformation.Add("reviewer", "Y");

            FirebaseResponse addNPRepResponse = await firebaseClient.SetAsync("nonprofitreps/" + generatedIDForNonprofit + "/" + AppData.CurUser.UID, nonprofitRepInformation);

        }

        /// <summary>
        /// Upon volunteer registration, they are automatically granted the Novice badge
        /// which will be written to Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> AddNoviceBadgeToFirebaseAsync(User theUser)
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse writeNoviceBadgeResponse = await firebaseClient.SetAsync("badges/" + theUser.UID, "Novice");
            return writeNoviceBadgeResponse.Body;
        }
    }
}