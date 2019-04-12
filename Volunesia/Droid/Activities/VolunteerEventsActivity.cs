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
        public List<VolunteerEvent> UpcomingEvents { get; set; }
        public List<VolunteerEvent> PastEvents { get; set; }
        public List<Event> AllEvents { get; set; }

        private List<string> mItems;
        private ListView mListView;

        //boolean values that check for event subscriptions
        public bool PastEventsCheckSubscription { get; set; }
        public bool PresentEventsCheckSubscription { get; set; }
        public bool UpcomingEventsCheckSubscription { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            //Load all volunteer events onto the List
            mItems = new List<string>();

            AllEvents = new List<Event>();

            //create a list that contains all upcoming and events for a volunteer
            PastEvents = new List<VolunteerEvent>();
            UpcomingEvents = new List<VolunteerEvent>();
            

            if(AppData.VolunteerHistory.VolunteerEvents.Count != 0)
            {
                PastEvents = AppData.VolunteerHistory.VolunteerEvents;
            }
            if(AppData.FutureEvents.VolunteerEvents.Count != 0)
            {
                UpcomingEvents = AppData.FutureEvents.VolunteerEvents;
            }

            //Retrieve all present events
            var allEvents = System.Threading.Tasks.Task.Run(async () =>
            {
                return await QueryAllEvents();


            });

            mItems = new List<string>();

            foreach(var presentEvent in AllEvents)
            {
                mItems.Add(presentEvent.EventName);
            }

            PastEventsCheckSubscription = false;
            PresentEventsCheckSubscription = false;
            UpcomingEventsCheckSubscription = false;

            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.VolunteerEvents);

            mListView = FindViewById<ListView>(Resource.Id.myListView);

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
        /// Executes once a present event from a ListView is clicked on 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>        
        public void PresentEventClicked(object sender, AdapterView.ItemClickEventArgs e)
        {
            Console.WriteLine(AllEvents[e.Position].EventName);
            var intent = new Intent(this, typeof(EventActivity));
            intent.PutExtra("event", JsonConvert.SerializeObject(AllEvents[e.Position]));
            StartActivity(intent);
            
        }

        /// <summary>
        /// Executes once a past event from a ListView is clicked on
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void PastEventClicked(object sender, AdapterView.ItemClickEventArgs e)
        {

        }


        /// <summary>
        /// Executes once an upcoming event from a ListView is clicked on 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>        
        public void UpcomingEventClicked(object sender, AdapterView.ItemClickEventArgs e)
        {
            Console.WriteLine(UpcomingEvents[e.Position].EventName);

            Event selectedEvent = new Event()
            {
                EventName = UpcomingEvents[e.Position].EventName,
                EventID = UpcomingEvents[e.Position].EventID,
                HostID = UpcomingEvents[e.Position].NonprofitID
            };


            var intent = new Intent(this, typeof(EventActivity));
            intent.PutExtra("event", JsonConvert.SerializeObject(selectedEvent));
            StartActivity(intent);

        }


        /// <summary>
        /// Shows all volunteer's past events after clicking Show Past Events button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ShowPastEvents(object sender, EventArgs e)
        {
            
            mItems = new List<string>();
            //traverses the volunteer's events, and determines if they occurred after current time or not
            foreach (var pastEvent in PastEvents)
            {
                mItems.Add(pastEvent.EventName);
            }

            //Adapt the ListView accordingly to showcase past events
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

            if (PresentEventsCheckSubscription)
            {
                mListView.ItemClick -= PresentEventClicked;
                PresentEventsCheckSubscription = false;
            }
            if (UpcomingEventsCheckSubscription)
            {
                mListView.ItemClick -= UpcomingEventClicked;
                UpcomingEventsCheckSubscription = false;
            }

            mListView.ItemClick += PastEventClicked;
            PastEventsCheckSubscription = true;


        }

        /// <summary>
        /// Displays all upcoming events that a volunteer is signed up for
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ShowUpcomingEvents(object sender, EventArgs e)
        {
            mItems = new List<string>();
            foreach (var upcomingEvent in UpcomingEvents)
            {
                mItems.Add(upcomingEvent.EventName);
            }
            ArrayAdapter<string> adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleListItem1, mItems);
            mListView.Adapter = adapter;

            //checks if there is an event subscription to PastEventClicked
            if (PastEventsCheckSubscription)
            {
                mListView.ItemClick -= PastEventClicked;
                PastEventsCheckSubscription = false;
            }

            //checks if there is an event subscription to PresentEventClicked
            if (PresentEventsCheckSubscription)
            {
                mListView.ItemClick -= PresentEventClicked;
                PresentEventsCheckSubscription = false;
            }
            mListView.ItemClick += UpcomingEventClicked;
            UpcomingEventsCheckSubscription = true;
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


            //checks if there is an event subscription to PastEventClicked
            if (PastEventsCheckSubscription)
            {
                mListView.ItemClick -= PastEventClicked;
                PastEventsCheckSubscription = false;
            }

            //checks if there is an event subscription to UpcomingEventClicked
            if (UpcomingEventsCheckSubscription)
            {
                mListView.ItemClick -= UpcomingEventClicked;
                UpcomingEventsCheckSubscription = false;
            }
            
            mListView.ItemClick += PresentEventClicked;
            PresentEventsCheckSubscription = true;
        }


        //Proceeds to query all events that a volunteer has taken part of or will take part of
        public async System.Threading.Tasks.Task<string> QueryVolunteerHistory()
        {
            IFirebaseConfig config = FiresharpConfig.GetFirebaseConfig();

            IFirebaseClient firebaseClient = new FireSharp.FirebaseClient(config);

            //Retrieve the user 
            FirebaseResponse response = await firebaseClient.GetAsync("volunteerhistory/" + AppData.CurUser.UID);

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
                    AllEvents.Add(theEvent);
                }
            }
            return resultant;
        }

    }
}