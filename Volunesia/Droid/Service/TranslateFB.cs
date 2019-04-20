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
using Newtonsoft.Json.Linq;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.Droid.Service
{
    public class TranslateFB
    {

        /// <summary>
        /// Occupies the volunteer's past and upcoming events
        /// </summary>
        public void OccupyVolunteerHistory(User loggedUser, string volHistoryInJson)
        {
            AppData.VolunteerHistory = new VolunteerHistory();
            AppData.FutureEvents = new VolunteerHistory();

            List<VolunteerEvent> pastEvents = new List<VolunteerEvent>();
            List<VolunteerEvent> upcomingEvents = new List<VolunteerEvent>();

            var mainVolHistoryNode = JObject.Parse(volHistoryInJson);

            //iterate through the event mappings in the node
            foreach (var eventpair in mainVolHistoryNode)
            {
                //retrieve the information from each event node, and then form a volunteerevent object
                var attended = eventpair.Value["attended"].ToString();
                var eventdate = eventpair.Value["eventdate"].ToString();
                var hoursVolunteered = eventpair.Value["hoursvolunteered"].ToString();
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
                        EventID = eventpair.Key,
                        EventName = eventname,
                        NonprofitID = nonprofitid,
                        HoursCompleted = Convert.ToDouble(hoursVolunteered)
                       
                    };
                    pastEvents.Add(volunteerevent);
                    
                }
                //otherwise it is regarded as an upcoming event
                else
                {
                    VolunteerEvent upcomingVolunteerEvent = new VolunteerEvent()
                    {
                        Attended=attended,
                        EventDate = Convert.ToDateTime(eventdate),
                        EventID = eventpair.Key,
                        EventName = eventname,
                        NonprofitID = nonprofitid
                    };

                    upcomingEvents.Add(upcomingVolunteerEvent);
                }

            }

            //update the AppData.VolunteerHistory and AppData.FutureEvents
            AppData.VolunteerHistory.VolunteerEvents = pastEvents;
            AppData.FutureEvents.VolunteerEvents = upcomingEvents;


        }


    }
}