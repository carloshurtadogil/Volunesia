﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "VolunteerProfileActivity")]
    public class VolunteerProfileActivity : Activity
    {

        public Volunteer CurrentVolunteer { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.VolunteerProfile);

            //Proceeds to get the volunteer's current level
            var volunteerLevelTask = System.Threading.Tasks.Task.Run(async () => {

                return await GetVolunteerLevelAsync();

            });
            //Proceeds to get volunteer badges
            var volunteerBadgesTask = System.Threading.Tasks.Task.Run(async () =>
            {
                return await GetVolunteerBadgesAsync();
            });

            string volunteerLevelResult = volunteerLevelTask.Result;
            CurrentVolunteer = new Volunteer();

            //check for a presence of volunteer badges, in order to retrieve the badges 
            if(volunteerBadgesTask.Result != "null")
            {
                var vol = JObject.Parse(volunteerLevelResult);
                string volLevel = vol["level"].ToString();
                string actualVolunteerBadge = (volunteerBadgesTask.Result).Substring(1, volunteerBadgesTask.Result.Length-2);
                CurrentVolunteer = new Volunteer()
                {
                    Level = Convert.ToInt32(volLevel),
                    BadgeList = OccupyVolunteerBadges(actualVolunteerBadge),
                    PersonalDescription = AppData.CurUser.PersonalStatement

                };
            }
            //otherwise, assign an empty list of badges for the volunteer
            else
            {
                var vol = JObject.Parse(volunteerLevelResult);
                var volLevel = vol["level"].ToString();
                CurrentVolunteer = new Volunteer()
                {
                    Level = Convert.ToInt32(volLevel),
                    BadgeList = new List<BadgeCategory.Badge>(),
                    PersonalDescription = AppData.CurUser.PersonalStatement
                };
            }
            
            //retrieve the TextView components then populate them
            var volunteerName = FindViewById<TextView>(Resource.Id.volunteerName);
            var volunteerLevel = FindViewById<TextView>(Resource.Id.volunteerLevel);
            var volunteerPersonalDescription = FindViewById<TextView>(Resource.Id.volunteerPersonalDescription);

            
            volunteerName.Text = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
            volunteerLevel.Text = CurrentVolunteer.Level.ToString();
            volunteerPersonalDescription.Text = CurrentVolunteer.PersonalDescription;

            
        }
        

        /// <summary>
        /// Occupies a volunteer's badges by filling them into a volunteer's BadgeList
        /// </summary>
        public List<BadgeCategory.Badge> OccupyVolunteerBadges(String currentBadge )
        {
            List<BadgeCategory.Badge> badges = new List<BadgeCategory.Badge>();

            switch (currentBadge)
            {
                case "Grandmaster":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    badges.Add(BadgeCategory.Badge.Advanced);
                    badges.Add(BadgeCategory.Badge.Expert);
                    badges.Add(BadgeCategory.Badge.Grandmaster);
                    break;
                case "Expert":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    badges.Add(BadgeCategory.Badge.Advanced);
                    badges.Add(BadgeCategory.Badge.Expert);
                    break;
                case "Advanced":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    badges.Add(BadgeCategory.Badge.Advanced);
                    break;
                case "Intermediate":
                    badges.Add(BadgeCategory.Badge.Novice);
                    badges.Add(BadgeCategory.Badge.Intermediate);
                    break;
                case "Novice":
                    badges.Add(BadgeCategory.Badge.Novice);
                    break;
            }


            var noviceBadge = FindViewById<ImageView>(Resource.Id.noviceBadgeImage);
            var advancedBadge = FindViewById<ImageView>(Resource.Id.advancedBadgeImage);
            var intermediateBadge = FindViewById<ImageView>(Resource.Id.intermediateBadgeImage);
            var expertBadge = FindViewById<ImageView>(Resource.Id.expertBadgeImage);
            var grandmasterBadge = FindViewById<ImageView>(Resource.Id.grandmasterBadgeImage);

            //fills in the badges that will be shown on the VolunteerProfile page
            foreach (BadgeCategory.Badge categ in badges)
            {
                if (categ.ToString().Equals("Novice"))
                {
                    noviceBadge.SetImageResource(Resource.Mipmap.noviceBadge);
                }
                else if (categ.ToString().Equals("Intermediate"))
                {
                    intermediateBadge.SetImageResource(Resource.Mipmap.intermediateBadge);
                }
                else if (categ.ToString().Equals("Advanced"))
                {
                    advancedBadge.SetImageResource(Resource.Mipmap.advancedBadge);
                }
                else if (categ.ToString().Equals("Expert"))
                {
                    expertBadge.SetImageResource(Resource.Mipmap.expertBadge);
                }
                else if (categ.ToString().Equals("Grandmaster"))
                {
                    grandmasterBadge.SetImageResource(Resource.Mipmap.grandmasterBadge);   
                }

            }

            return badges;
        }

        /// <summary>
        /// Retrieves the volunteer's level from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteerLevelAsync()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
            FirebaseResponse volunteerLevel = await firebaseClient.GetAsync("users/" + AppData.CurUser.UID);
            return volunteerLevel.Body;
        }

        /// <summary>
        /// Retrieves a volunteer's list of badges from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteerBadgesAsync()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            FirebaseResponse volunteerBadgeResponse = await firebaseClient.GetAsync("badges/" + AppData.CurUser.UID);

            return volunteerBadgeResponse.Body;


        }


    }
}