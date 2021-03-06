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
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "VolunteerProfileActivity")]
    public class VolunteerProfileActivity : Activity
    {
        public Attendee SelectedAttendee { get; set; }
        public Volunteer CurrentVolunteer { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.VolunteerProfile);

            if (AppData.CurUser.UserType.Equals("NP")) { 
                SelectedAttendee = JsonConvert.DeserializeObject<Attendee>(Intent.GetStringExtra("chosenAttendeeVolunteer"));
                AppData.CurVolunteer = new Volunteer();
            }

            var volunteerInfo = System.Threading.Tasks.Task.Run(async () =>
            {
                return await GetVolunteerInfo();
            });
            string result = volunteerInfo.Result;
            
            var jsonObject = JObject.Parse(result);
            var firstName = jsonObject["first"].ToString();
            var lastName = jsonObject["last"].ToString();
            var level = Convert.ToInt32(jsonObject["level"]);
            var xp = Convert.ToDouble(jsonObject["xp"]);


            AppData.CurVolunteer.Level = level;
            AppData.CurVolunteer.Experience = xp;

            //Proceeds to get volunteer badges
            var volunteerBadgesTask = System.Threading.Tasks.Task.Run(async () =>
            {
                return await GetVolunteerBadgesAsync();
            });

            CurrentVolunteer = new Volunteer();

            //check for a presence of volunteer badges, in order to retrieve the badges 
            if(!volunteerBadgesTask.Result.Equals("null"))
            {
                string actualVolunteerBadge = (volunteerBadgesTask.Result).Substring(1, volunteerBadgesTask.Result.Length-2);

                AppData.CurVolunteer.BadgeList = OccupyVolunteerBadges(actualVolunteerBadge);
                AppData.CurVolunteer.PersonalDescription = AppData.CurUser.PersonalStatement;
            }
            //otherwise, assign an empty list of badges for the volunteer
            else
            {
                AppData.CurVolunteer.BadgeList = new List<BadgeCategory.Badge>();
                AppData.CurVolunteer.PersonalDescription = AppData.CurUser.PersonalStatement;
            }
            
            //retrieve the TextView components then populate them
            var volunteerName = FindViewById<TextView>(Resource.Id.volunteerName);
            var volunteerEmail = FindViewById<TextView>(Resource.Id.volunteerEmail);
            var volunteerLevel = FindViewById<TextView>(Resource.Id.volunteerLevel);
            var volunteerExperience = FindViewById<TextView>(Resource.Id.volunteerExperience);
            var volunteerPersonalDescription = FindViewById<TextView>(Resource.Id.volunteerPersonalDescription);

            //if the cur user is a nonprofit, set the selected volunteer name as the one retrieved
            if (AppData.CurUser.UserType.Equals("NP"))
            {
                volunteerName.Text = firstName + " " + lastName;
                volunteerEmail.Text = SelectedAttendee.EmailAddress;
            }
            //else use AppData.CurUser's first name, last name, and email address
            else
            {
                volunteerName.Text = AppData.CurUser.FirstName + " " + AppData.CurUser.LastName;
                volunteerEmail.Text = AppData.CurUser.EmailAddress;
            }
            volunteerLevel.Text = "Level: " + Convert.ToString(AppData.CurVolunteer.Level);
            volunteerExperience.Text = "Experience:  " + Convert.ToString(AppData.CurVolunteer.Experience);

            volunteerPersonalDescription.Text = "";

            
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
        public async System.Threading.Tasks.Task<string> GetVolunteerInfo()
        {
            if (AppData.CurUser.UserType.Equals("V"))
            {
                IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
                IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);
                FirebaseResponse volunteerInfo = await firebaseClient.GetAsync("users/" + AppData.CurUser.UID);
                return volunteerInfo.Body;

            }
            IFirebaseConfig otherConfig = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient otherFirebaseClient = new FireSharp.FirebaseClient(otherConfig);
            FirebaseResponse otherVolunteerInfo = await otherFirebaseClient.GetAsync("users/" + SelectedAttendee.UID);
            return otherVolunteerInfo.Body;

        }


        /// <summary>
        /// Retrieves a volunteer's list of badges from Firebase
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<string> GetVolunteerBadgesAsync()
        {

            if (AppData.CurUser.UserType.Equals("V"))
            {

                IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
                IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

                FirebaseResponse volunteerBadgeResponse = await firebaseClient.GetAsync("badges/" + AppData.CurUser.UID);

                return volunteerBadgeResponse.Body;

            }
            IFirebaseConfig otherConfig = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient otherFirebaseClient = new FireSharp.FirebaseClient(otherConfig);

            FirebaseResponse otherVolunteerBadgeResponse = await otherFirebaseClient.GetAsync("badges/" + SelectedAttendee.UID);
            return otherVolunteerBadgeResponse.Body;

        }


    }
}