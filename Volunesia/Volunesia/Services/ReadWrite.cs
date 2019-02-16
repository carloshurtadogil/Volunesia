using System;
using System.Collections.Generic;
using System.IO;
using Newtonsoft.Json;
using Volunesia.Models;
namespace Volunesia.Services
{
    public static class ReadWrite
    {
        static readonly string MainPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
        static readonly string DataPath = Path.Combine(MainPath, "data.json");
        static readonly string NonProfitPath = Path.Combine(MainPath, "nonprofit.json");
        static readonly string UserPath = Path.Combine(MainPath, "user.json");

        //Write user information to current device
        public static void WriteUser()
        {
            string userJson = JsonConvert.SerializeObject(AppData.CurUser, Formatting.Indented);
            File.WriteAllText(UserPath, userJson);
        }

        //Read user information from current device
        public static void ReadUser()
        {
            if (File.Exists(UserPath))
            {
                using (StreamReader file = File.OpenText(UserPath))
                {
                    JsonSerializer serializer = new JsonSerializer();
                    AppData.CurUser = (User)serializer.Deserialize(file, typeof(User));
                }
            }
        }
    }
}
