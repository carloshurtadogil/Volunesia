using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Volunesia.Models;
using Volunesia.Services;
using FireSharp.Interfaces;
using FireSharp.Response;
using Volunesia.Droid.Service;
using Newtonsoft.Json.Linq;

namespace Volunesia.Droid.Activities
{
    public class NPProfileFragment : Fragment
    {
        public string NonprofitID { get; set; } //Holds the Nonprofits unique ID
        public TextView NameTextView;
        public TextView MissionTextView;
        public TextView EmailTextView;
        public TextView PrimaryPhoneTextView;
        public TextView CityTextView;
        public TextView ZipTextView;


        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            // Use this to return your custom view for this Fragment
            // return inflater.Inflate(Resource.Layout.YourFragment, container, false);

            //Gets the Nonprofit's ID from the currently logged in representative.
            NonprofitID = AppData.NonprofitRepresentative.AssociatedNonprofit;

            //Query the Nonprofit's information from Firebase
            var retrieveNonprofit = System.Threading.Tasks.Task.Run(async () =>
            {
                return await QueryNonprofitInfo();
            });

            //Query the Nonprofit's representatives infromation.
            var retrievePrimaryRepresentative = System.Threading.Tasks.Task.Run(async () =>
            {
                return await QueryPrimaryRepresentative();
            });

            //Parse the queried results into a JSON Object
            JObject nonProfitInfo = JObject.Parse(retrieveNonprofit.Result);
            JObject primaryRepresentativeInfo = JObject.Parse(retrievePrimaryRepresentative.Result);

            //Store needed infomation into local string variables.
            string nonprofitName = "Nonprofit Name: " + nonProfitInfo["name"].ToString();
            string missionStatement = "Mission Statement: " + nonProfitInfo["missionstatement"].ToString();
            string nonprofitEmail = "Email: " + primaryRepresentativeInfo["email"].ToString();
            string phone = "Phone: " + nonProfitInfo["primaryphone"].ToString();
            string cityName = "City: " + nonProfitInfo["city"].ToString();
            string zipCode = "Zip" + nonProfitInfo["zip"].ToString();

            //Get the view and textview fields
            View nonprofitProfileView = inflater.Inflate(Resource.Layout.NPProfile, container, false);
            NameTextView = nonprofitProfileView.FindViewById<TextView>(Resource.Id.name);
            MissionTextView = nonprofitProfileView.FindViewById<TextView>(Resource.Id.missionstatement);
            EmailTextView = nonprofitProfileView.FindViewById<TextView>(Resource.Id.email);
            PrimaryPhoneTextView = nonprofitProfileView.FindViewById<TextView>(Resource.Id.primaryphone);
            CityTextView = nonprofitProfileView.FindViewById<TextView>(Resource.Id.city);
            ZipTextView = nonprofitProfileView.FindViewById<TextView>(Resource.Id.zip);

            //Set the text in the TextViews to display the queried information.
            NameTextView.Text = nonprofitName;
            MissionTextView.Text = missionStatement;
            EmailTextView.Text = nonprofitEmail;
            PrimaryPhoneTextView.Text = phone;
            CityTextView.Text = cityName;
            ZipTextView.Text = zipCode;

            //Return the veiw
            return nonprofitProfileView;
        }

        public async System.Threading.Tasks.Task<string> QueryNonprofitInfo()
        {

            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Query Firebase to get NP
            FirebaseResponse response = await firebaseClient.GetAsync("nonprofitorgs/" + NonprofitID);

            return response.Body;
        }

        public async System.Threading.Tasks.Task<string> QueryPrimaryRepresentative()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Query Firebase to get Representatives information
            FirebaseResponse response = await firebaseClient.GetAsync("users/" + AppData.NonprofitRepresentative.UID);

            return response.Body;
        }
    }
}