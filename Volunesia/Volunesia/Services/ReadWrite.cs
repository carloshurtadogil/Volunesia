﻿using System;
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
        static readonly string NonProfitRepPath = Path.Combine(MainPath, "nonprofitrep.json");

        //Write user information to current device
        public static void WriteUser()
        {
            string userJson = JsonConvert.SerializeObject(AppData.CurUser, Formatting.Indented);
            File.WriteAllText(UserPath, userJson);


        }

        //Write information regarding nonprofit representative
        public static void WriteNonprofitRepresentative()
        {
            if (AppData.CurUser != null && AppData.CurUser.UserType == "NP")
            {
                string npRepJson = JsonConvert.SerializeObject(AppData.NonprofitRepresentative, Formatting.Indented);
                File.WriteAllText(NonProfitRepPath, npRepJson);
            }
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

        //Read nonprofit representative information from current device
        public static void ReadNPRepresentative() 
        {
            System.Diagnostics.Debug.WriteLine("Reading Nonprofit Rep");
            if ((AppData.CurUser != null) && (AppData.CurUser.UserType == "NP"))
            {
                System.Diagnostics.Debug.WriteLine("Reading Nonprofit Rep / Not null");
                if (File.Exists(NonProfitRepPath))
                {
                    System.Diagnostics.Debug.WriteLine("Reading Nonprofit Rep / Not null / Found");
                    using (StreamReader file = File.OpenText(NonProfitRepPath))
                    {
                        JsonSerializer serializer = new JsonSerializer();
                        AppData.NonprofitRepresentative = (NonprofitRepresentative)serializer.Deserialize(file, typeof(NonprofitRepresentative));
                        if(AppData.NonprofitRepresentative != null )
                        {
                            System.Diagnostics.Debug.WriteLine("UID:          " + AppData.NonprofitRepresentative.UID);
                            System.Diagnostics.Debug.WriteLine("Pos:          " + AppData.NonprofitRepresentative.Position);
                            System.Diagnostics.Debug.WriteLine("Poster:       " + AppData.NonprofitRepresentative.Poster.ToString());
                            System.Diagnostics.Debug.WriteLine("Reviewer:     " + AppData.NonprofitRepresentative.Reviewer.ToString());
                            System.Diagnostics.Debug.WriteLine("Reps Mgr:     " + AppData.NonprofitRepresentative.RepsManager.ToString());
                            System.Diagnostics.Debug.WriteLine("AssociatedNP: " + AppData.NonprofitRepresentative.AssociatedNonprofit);
                        }
                        else
                        {
                            System.Diagnostics.Debug.WriteLine("Is null");
                        }   
                    }
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("Reading Nonprofit Rep/ Not Null/ File Not found");
                }
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("Reading Nonprofit Rep / Failed");
            }
        }
    }
}
