using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Volunesia.Droid.Service;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Activities
{
    [Activity(Label = "VolunteerEventsActivity")]
    public class VolunteerEventsActivity : Activity
    {
        public VolunteerHistory theVolunteerHistory { get; set; }
        public List<Event> UpcomingEvents { get; set; }
        public List<VolunteerEvent> PastEvents { get; set; }
        public List<Event> AllEvents { get; set; }

        private List<string> mItems;
        private ListView mListView;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            //Retrieve the VolunteerHistory of a volunteer from Firebase
            var queryvolhistorytask = System.Threading.Tasks.Task.Run(async () =>
            {

                return await QueryVolunteerHistory();

            });
            var volhistoryasjson = queryvolhistorytask.Result;

            //Retrieve all present events
            var allEvents = System.Threading.Tasks.Task.Run(async () =>
            {
                return await QueryAllEvents();


            });


            //parse the jobject and retrieve the components of the response
            //var mainVolHistoryNode = JObject.Parse(volhistoryasjson);

            //create a volunteerhistory object that contains all of the volunteering events
            theVolunteerHistory = new VolunteerHistory();

            //iterate through the event mappings in the node
            //foreach (var eventpair in mainVolHistoryNode)
            //{
            //    //retrieve the information from each event node, and then form a volunteerevent object
            //    var attended = eventpair.Value["attended"].ToString();
            //    var eventdate = eventpair.Value["eventdate"].ToString();
            //    var eventname = eventpair.Value["eventname"].ToString();
            //    var nonprofitid = eventpair.Value["nonprofitid"].ToString();
            //    var nonprofitname = eventpair.Value["nonprofitname"].ToString();

            //    VolunteerEvent volunteerevent = new VolunteerEvent()
            //    {
            //        Attended = attended,
            //        EventDate = Convert.ToDateTime(eventdate),
            //        EventName = eventname,
            //        NonprofitID = nonprofitid,
            //        NonprofitName = nonprofitname

            //    };

            //    theVolunteerHistory.VolunteerEvents.Add(volunteerevent);
            //}



            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.VolunteerEvents);

            mListView = FindViewById<ListView>(Resource.Id.myListView);

            

            //Load all volunteer events onto the List
            mItems = new List<string>();
            foreach(var volunteerEvent in theVolunteerHistory.VolunteerEvents)
            {
                mItems.Add(volunteerEvent.EventName);
            }

            //Adapt the list into a ListView
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

            //Retrieve the buttons and listen to any clicking events
            var pastEventsButton = FindViewById<Button>(Resource.Id.pastEventsButton);
            pastEventsButton.Click += ShowPastEvents;

            var allEventsButton = FindViewById<Button>(Resource.Id.allEventsButton);
            allEventsButton.Click += ShowAllEvents;

            var upcomingEventsButton = FindViewById<Button>(Resource.Id.upcomingEventsButton);
            upcomingEventsButton.Click += ShowUpcomingEvents;

        }

        /// <summary>
        /// Executes once an event from a ListView is clicked on 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>        
        public void EventClicked(object sender, AdapterView.ItemClickEventArgs e)
        {
            Console.WriteLine(AllEvents[e.Position].EventName);
            var intent = new Intent(this, typeof(EventActivity));
            intent.PutExtra("event", JsonConvert.SerializeObject(AllEvents[e.Position]));
            StartActivity(intent);
            
        }

        /// <summary>
        /// Shows all volunteer's past events after clicking Show Past Events button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ShowPastEvents(object sender, EventArgs e)
        {
            
            List<VolunteerEvent> AllEvents = theVolunteerHistory.VolunteerEvents;
            mItems = new List<string>();
            //traverses the volunteer's events, and determines if they occurred after current time or not
            foreach (var volEvent in AllEvents)
            {
                if (volEvent.EventDate.CompareTo(DateTime.Now) >0) {
                    PastEvents.Add(volEvent);
                }
            }

            //Adapt the ListView accordingly to showcase past events
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

        }

        //Displays all upcoming events for a volunteer after clicking the Show Upcoming Events button
        public void ShowUpcomingEvents(object sender, EventArgs e)
        {
            
        }

        //Displays all events of a volunteer after clicking on the Show All Events button
        public void ShowAllEvents(object sender, EventArgs e)
        {
           
            mItems = new List<string>();
            foreach(var presentEvent in AllEvents)
            {
                mItems.Add(presentEvent.EventName);
            }
            //Adapt the ListView accordingly to showcase all events
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

            mListView.ItemClick += EventClicked;
        }


        //Proceeds to query all events that a volunteer has taken part of
        public async System.Threading.Tasks.Task<string> QueryVolunteerHistory()
        {
            IFirebaseConfig config = new FirebaseConfig
            {
                AuthSecret = "bjv4kn9YGRYWkib6d1TmWSLHCwUZvasjiFK7ovQX",
                BasePath = "https://volunesia-f5475.firebaseio.com"
            };

            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Retrieve the user 
            FirebaseResponse response = await firebaseClient.GetAsync("volunteerhistory/" + AppData_Droid.Auth.CurrentUser.Uid);

            string resultant = response.Body;

            return resultant;
        }


        //Proceeds to query all the present events that have yet to still occur
        public async System.Threading.Tasks.Task<string> QueryAllEvents()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();

            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Retrieve the user 
            FirebaseResponse response = await firebaseClient.GetAsync("events");

            string resultant = response.Body;

            JObject allEvents = JObject.Parse(resultant);

            AllEvents = new List<Event>();

            //Traverses all the nonprofits who have signed up for events
            foreach (var eventKeyValuePair in allEvents)
            {
                string nonprofitID = eventKeyValuePair.Key;
                JObject eventIDAndInformation = (JObject)eventKeyValuePair.Value;

                //Traverses all of the events per nonprofit
                foreach (var idAndInfoNode in eventIDAndInformation) 
                {
                    Volunesia.Models.Event theEvent = new Volunesia.Models.Event();
                    theEvent.EventID = idAndInfoNode.Key;
                    theEvent.HostID = nonprofitID;
                    theEvent.EventDate = Convert.ToDateTime(idAndInfoNode.Value["eventdate"].ToString());
                    theEvent.EventName = idAndInfoNode.Value["eventname"].ToString();
                    Console.WriteLine(idAndInfoNode.Value["applicationdeadline"].ToString());
                    AllEvents.Add(theEvent);
                }
            }
            return resultant;
        }

    }
}