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

        //boolean values that check for event subscriptions
        public bool PresentEventsCheckSubscription { get; set; }
        public bool UpcomingEventsCheckSubscription { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            //Load all volunteer events onto the List
            mItems = new List<string>();

            AllEvents = new List<Event>();

            //create a list that contains all upcoming events for a volunteer
            UpcomingEvents = new List<Event>();
            //Retrieve the VolunteerHistory of a volunteer from Firebase
            var queryvolhistorytask = System.Threading.Tasks.Task.Run(async () =>
            {

                return await QueryVolunteerHistory();

            });



            if(!queryvolhistorytask.Result.Equals("null"))
            {

                var volhistoryasjson = queryvolhistorytask.Result;
                //parse the jobject and retrieve the components of the response
                var mainVolHistoryNode = JObject.Parse(volhistoryasjson);

                //create a volunteerhistory object that contains all of the volunteering events
                theVolunteerHistory = new VolunteerHistory();
                theVolunteerHistory.VolunteerEvents = new List<VolunteerEvent>();

                //iterate through the event mappings in the node
                foreach (var eventpair in mainVolHistoryNode)
                {
                    //retrieve the information from each event node, and then form a volunteerevent object
                    var attended = eventpair.Value["attended"].ToString();
                    var eventdate = eventpair.Value["eventdate"].ToString();
                    DateTime eventDateInFormat = Convert.ToDateTime(eventdate);
                    var eventname = eventpair.Value["eventname"].ToString();
                    var nonprofitid = eventpair.Value["nonprofitid"].ToString();

                    //if event occurred before the current date, then it is regarded as a past evnet
                    if (eventDateInFormat.CompareTo(DateTime.Now) <= 0)
                    {
                        VolunteerEvent volunteerevent = new VolunteerEvent()
                        {
                            Attended = attended,
                            EventDate = Convert.ToDateTime(eventdate),
                            EventName = eventname,
                            NonprofitID = nonprofitid

                        };
                        theVolunteerHistory.VolunteerEvents.Add(volunteerevent);
                    }
                    //otherwise it is regarded as an upcoming event
                    else
                    {
                        Event upcomingEvent = new Event()
                        {
                            EventDate = Convert.ToDateTime(eventdate),
                            EventID = eventpair.Key,
                            EventName = eventname,
                            HostID = nonprofitid
                        };
                        UpcomingEvents.Add(upcomingEvent);
                    }

                }
                
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
        /// Executes once an upcoming event from a ListView is clicked on 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>        
        public void UpcomingEventClicked(object sender, AdapterView.ItemClickEventArgs e)
        {
            Console.WriteLine(UpcomingEvents[e.Position].EventName);
            var intent = new Intent(this, typeof(EventActivity));
            intent.PutExtra("event", JsonConvert.SerializeObject(UpcomingEvents[e.Position]));
            StartActivity(intent);

        }


        /// <summary>
        /// Shows all volunteer's past events after clicking Show Past Events button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ShowPastEvents(object sender, EventArgs e)
        {
            PastEvents = new List<VolunteerEvent>();
            List<VolunteerEvent> AllEvents = theVolunteerHistory.VolunteerEvents;
            mItems = new List<string>();
            //traverses the volunteer's events, and determines if they occurred after current time or not
            foreach (var volEvent in AllEvents)
            {
                if (volEvent.EventDate.CompareTo(DateTime.Now) <0) {
                    PastEvents.Add(volEvent);
                    mItems.Add(volEvent.EventName);
                }
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
                mListView.ItemClick -= ShowUpcomingEvents;
                UpcomingEventsCheckSubscription = false;
            }


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