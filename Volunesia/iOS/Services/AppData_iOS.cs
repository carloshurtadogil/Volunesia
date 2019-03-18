using System;
using System.Collections.Generic;
using Firebase.Auth;
using Firebase.Core;
using Firebase.Database;
using Firebase.Storage;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class AppData_iOS
    {
        private static AppData_iOS Instance; //Instance of this class to be referred to

        //Database references
        public static DatabaseReference DataNode { get; set; } //Reference to 'data' node in Firebase
        public static DatabaseReference UsersNode { get; set; } //Reference to 'users' node in Firebase
        public static DatabaseReference NonprofitNode { get; set; } //Reference to 'nonprofitorgs' node in Firebase
        public static DatabaseReference NonprofitRepNode { get; set; } //Reference to 'nonprofitreps' node in Firebase
        public static DatabaseReference VolunteerHistoryNode { get; set; } //Reference to 'volunteerhistory node in Firebase
        public static DatabaseReference EventNode { get; set; } //Reference to 'events' node in Firebase

        //Storage references
        public static StorageReference StorageRootReference { get; set; } //Base reference to Storage

        public static Auth Auth; //Firebase authentication services (For creations and sign-ins)



        //Current list of events that the user can sign up for
        public static List<Event> CurrentEvents { get; set; }
        //List of all events hosted by a specfic nonprofit
        public static List<Event> NonprofitEvents { get; set; }



        //Configure the nodes
        private AppData_iOS()
        {
            Firebase.Core.App.Configure();
            //Configure Database References
            DataNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("data");
            EventNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("events");
            NonprofitNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("nonprofitorgs");
            UsersNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("users");
            NonprofitRepNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("nonprofitreps");
            VolunteerHistoryNode = Database.DefaultInstance.GetRootReference()
                               .GetChild("volunteerhistory");

            //Configure Storage References
            StorageRootReference = Storage.DefaultInstance.GetRootReference();

            Auth = Auth.DefaultInstance;
        }

        /// <summary>
        /// Initialize the class
        /// </summary>
        /// <returns>The instance.</returns>
        public static AppData_iOS GetInstance()
        {
            AppData.GetInstance();
            if (Instance == null)
                Instance = new AppData_iOS();
            return Instance;
        }


        /// <summary>
        /// Add a new event to the NonprofitEvents list. If list is empty, initalize it.
        /// </summary>
        /// <param name="e">The new event to be added.</param>
        public static void AddToNonprofitEvents(Event e)
        {
            if (NonprofitEvents == null)
                NonprofitEvents = new List<Event>();
            if(!ExistsInNonprofitEvents(e.EventID))
                NonprofitEvents.Add(e);
        }

        public static bool ExistsInNonprofitEvents(string eid) 
        {
            foreach (Event e in NonprofitEvents)
            {
                if(e.EventID == eid)
                {
                    return true; 
                }
            }
            return false;
        }


        public static void SortNonprofitEventsByDate()
        {
            if(NonprofitEvents != null) 
            {
                Quicksorter.SortByDate(NonprofitEvents, 0, NonprofitEvents.Count-1);
                List<Event> events = new List<Event>();
                for(int i = NonprofitEvents.Count-1; i >= 0; i--)//Reverse list
                {
                    events.Add(NonprofitEvents[i]);
                }
                NonprofitEvents = events;
            }
        }



    }
}
