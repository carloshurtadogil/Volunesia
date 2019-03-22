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
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;
using Volunesia.Services;
using Volunesia.Models;
using Newtonsoft.Json;

namespace Volunesia.Droid.Activities
{
    public class NPAllEventsFragment : Fragment
    {
        public List<Event> AllEventsForNP { get; set; }
        public List<string> mAllNPItems { get; set; }
        public ListView AllNPEventsInListView;

        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            //Execues the method to retrieve all events for a nonprofit organization
            var retrieveAllEventsForNonprofits = System.Threading.Tasks.Task.Run(async () =>
            {
               await QueryAllEventsForNP();


            });

            foreach (var nonprofitEvent in AllEventsForNP)
            {
                mAllNPItems.Add(nonprofitEvent.EventName);
            }

            
            View allEventsView = inflater.Inflate(Resource.Layout.NPAllEvents, container, false );
            AllNPEventsInListView = allEventsView.FindViewById<ListView>(Resource.Id.allEventsForNP);

            ArrayAdapter<string> adapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleListItem1, mAllNPItems);
            AllNPEventsInListView.Adapter = adapter;

            AllNPEventsInListView.ItemClick += GoToEventPage;

            // Use this to return your custom view for this Fragment
            // return inflater.Inflate(Resource.Layout.YourFragment, container, false);

            return allEventsView;
        }

        public void GoToEventPage(object sender, AdapterView.ItemClickEventArgs e)
        {
            Console.WriteLine(AllEventsForNP[e.Position].EventName);
            var intent = new Intent(Context, typeof(EventActivity));
            intent.PutExtra("event", JsonConvert.SerializeObject(AllEventsForNP[e.Position]));
            StartActivity(intent);
        }


        /// <summary>
        /// Queries all events that a nonprofit organization has created 
        /// </summary>
        /// <returns></returns>
        public async System.Threading.Tasks.Task QueryAllEventsForNP()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Query Firebase to get events for NP
            FirebaseResponse allNPEventsResponse = await firebaseClient.GetAsync("events/" + AppData.NonprofitRepresentative.AssociatedNonprofit);

            string allNPEventsResponseResult = allNPEventsResponse.Body;
            JObject allEventsForNonprofit = JObject.Parse(allNPEventsResponseResult);

            //Traverse the events that the nonprofit has
            foreach(var eventKeyAndInfo in allEventsForNonprofit)
            {
                string nonprofitID = eventKeyAndInfo.Key;
                JObject eventIDAndInformation = (JObject)eventKeyAndInfo.Value;

                Event nonprofitEvent = new Event();
                nonprofitEvent.ApplicationDeadline = Convert.ToDateTime(eventIDAndInformation["applicationdeadline"].ToString());
                nonprofitEvent.Capacity= Convert.ToInt32(eventIDAndInformation["capacity"]);
                nonprofitEvent.EventDate = Convert.ToDateTime(eventIDAndInformation["eventdate"]);
                nonprofitEvent.EventName = eventIDAndInformation["eventname"].ToString();

                AllEventsForNP.Add(nonprofitEvent);
            }


        }
    }
}