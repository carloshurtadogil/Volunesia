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


        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            AllEventsForNP = new List<Event>();
            mAllNPItems = new List<string>();

            if(AppData.NPEventsHistory.NPEvents.Count == 0)
            {

                //Execues the method to retrieve all events for a nonprofit organization
                var retrieveAllEventsForNonprofits = System.Threading.Tasks.Task.Run(async () =>
                {
                    return await QueryAllEventsForNP();


                });

                JObject allEventsForNonprofit = JObject.Parse(retrieveAllEventsForNonprofits.Result);

                //Traverse the events that the nonprofit has
                foreach (var eventKeyAndInfo in allEventsForNonprofit)
                {
                    string eventID = eventKeyAndInfo.Key;
                    JObject eventIDAndInformation = (JObject)eventKeyAndInfo.Value;

                    Event nonprofitEvent = new Event();
                    nonprofitEvent.HostID = AppData.NonprofitRepresentative.AssociatedNonprofit;
                    nonprofitEvent.EventID = eventID;
                    nonprofitEvent.ApplicationDeadline = Convert.ToDateTime(eventIDAndInformation["applicationdeadline"].ToString());
                    nonprofitEvent.Capacity = Convert.ToInt32(eventIDAndInformation["capacity"]);
                    nonprofitEvent.EventDate = Convert.ToDateTime(eventIDAndInformation["eventdate"]);
                    nonprofitEvent.EventName = eventIDAndInformation["eventname"].ToString();

                    AllEventsForNP.Add(nonprofitEvent);
                }

                AppData.NPEventsHistory.NPEvents = AllEventsForNP;

                
            }
            else
            {
                AllEventsForNP = AppData.NPEventsHistory.NPEvents;
            }

            foreach (var nonprofitEvent in AllEventsForNP)
            {
                mAllNPItems.Add(nonprofitEvent.EventName);
            }

            //Set up the view and the listview, along with the adapter
            View allEventsView = inflater.Inflate(Resource.Layout.NPAllEvents, container, false );
            AllNPEventsInListView = allEventsView.FindViewById<ListView>(Resource.Id.allEventsForNP);

            ArrayAdapter<string> adapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleListItem1, mAllNPItems);
            AllNPEventsInListView.Adapter = adapter;

            AllNPEventsInListView.ItemClick += GoToEventPage;

            return allEventsView;
        }

        /// <summary>
        /// Goes to the EventActivity page upon clicking on an event item from the ListView
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
        public async System.Threading.Tasks.Task<string> QueryAllEventsForNP()
        {
            
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();
            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Query Firebase to get events for NP
            FirebaseResponse allNPEventsResponse = await firebaseClient.GetAsync("events/" + AppData.NonprofitRepresentative.AssociatedNonprofit);

            string allNPEventsResponseResult = allNPEventsResponse.Body;
            
            return allNPEventsResponseResult;


        }
    }
}