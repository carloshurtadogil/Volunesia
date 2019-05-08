using System;
using System.Collections.Generic;
using Volunesia.Models;
namespace Volunesia.Services
{
    public class AppData
    {
        public static User CurUser;//User who currently owns the device
        public static Volunteer CurVolunteer;//Any and all information if the user is a volunteer
        public static NonprofitRepresentative NonprofitRepresentative;//Any and all information if the user is a nonprofit representative.
        public static VolunteerHistory VolunteerHistory;//The history of all events that the volunteer has attended
        public static VolunteerHistory FutureEvents;//All events that the user plans on attending
        public static List<Event> VolunteerEventDetails;

        //NonprofitEventsHistory that contains all events of a nonprofit
        public static NonprofitEventsHistory NPEventsHistory;


        private static AppData Instance;


        public static AppData GetInstance()//Initializes the data
        {
            if (Instance == null)
                Instance = new AppData();
            ReadWrite.ReadUser();
            ReadWrite.ReadNPRepresentative();
            System.Diagnostics.Debug.WriteLine("Created AppData Instance");
            return Instance;
        }

    }
}