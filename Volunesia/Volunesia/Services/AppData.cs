using System;
using Volunesia.Models;
namespace Volunesia.Services
{
    public class AppData
    {
        public static User CurUser;


        private static AppData Instance;


        public static AppData GetInstance()
        {
            if (Instance == null)
                Instance = new AppData();

            return Instance;
        }

    }
}