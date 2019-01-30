using System;
using Volunesia.Models;

namespace Volunesia.VServices
{
    public class AppData
    {
        public static User CurrentUser;
        private static AppData Instance;

        public static AppData GetInstance()
        {
            if (Instance == null)
                Instance = new AppData();

            return Instance;
        }
    }
}
