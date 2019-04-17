using System;
using System.Collections.Generic;
using Volunesia.Models;
namespace Volunesia.Services
{
    public class AppData
    {
        public static User CurUser;
        public static Volunteer CurVolunteer;
        public static NonprofitRepresentative NonprofitRepresentative;
        public static VolunteerHistory VolunteerHistory;
        public static VolunteerHistory FutureEvents;
        public static List<Event> VolunteerEventDetails;

        //NonprofitEventsHistory that contains all events of a nonprofit
        public static NonprofitEventsHistory NPEventsHistory;


        private static AppData Instance;


        public static AppData GetInstance()
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