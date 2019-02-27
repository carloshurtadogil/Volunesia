using System;
using Volunesia.Models;
namespace Volunesia.Services
{
    public class AppData
    {
        public static User CurUser;
        public static NonprofitRepresentative NonprofitRepresentative;
        public static VolunteerHistory VolunteerHistory;


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
