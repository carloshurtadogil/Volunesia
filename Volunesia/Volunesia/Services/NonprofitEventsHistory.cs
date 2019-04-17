using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Volunesia.Models;

namespace Volunesia.Services
{
    public class NonprofitEventsHistory
    {
        // List of events that the user has attended and hours they have inputted
        public List<Event> NPEvents { get; set; }

        public NonprofitEventsHistory()
        {
            NPEvents = new List<Event>();
        }

        /// <summary>
        /// Adds a nonprofit event to the list of all events hosted by the nonprofit
        /// </summary>
        /// <param name="eventToBeAdded"></param>
        public void AddNonprofitEvent(Event eventToBeAdded)
        {
            NPEvents.Add(eventToBeAdded);
        }

        /// <summary>
        /// Removes a nonprofit event from the list of all events hosted by the nonprofit
        /// </summary>
        /// <param name="eventID"></param>
        public Event RemoveNonprofitEvent(string eventID)
        {
            Event selectedEvent = (from npEvent in NPEvents where npEvent.EventID == eventID select npEvent).FirstOrDefault();
            if(selectedEvent != null)
            {
                NPEvents.Remove(selectedEvent);
            }
            return selectedEvent;
        }

    }
}
