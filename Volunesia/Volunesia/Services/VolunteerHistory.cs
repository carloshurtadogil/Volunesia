using System;
using System.Collections.Generic;
using Volunesia.Models;

namespace Volunesia.Services
{
    public class VolunteerHistory
    {
        // List of events that the user has attended and hours they have inputted
        public List<VolunteerEvent> VolunteerEvents { get; set; }

        // Instance of this class
        public VolunteerHistory()
        {
            VolunteerEvents = new List<VolunteerEvent>();
        }

        private void Print(string s) 
        {
            System.Diagnostics.Debug.WriteLine(s); 
        }

        // Sort events by date
        private void SortEvents() 
        {
            int size = VolunteerEvents.Count;
            for(int i = 0; i < size; i++ )
            {
                int latest = i;
                for(int j = i; j < size; j++) 
                {
                    DateTime d1 = VolunteerEvents[i].EventDate;
                    DateTime d2 = VolunteerEvents[j].EventDate;
                    if(DateTime.Compare(d2, d1) > 0)
                    {
                        VolunteerEvent temp = VolunteerEvents[i];
                        VolunteerEvents[i] = VolunteerEvents[j];
                        VolunteerEvents[j] = temp;
                    }
                }
            }
        }

        public int Size()
        {
            return VolunteerEvents.Count; 
        }

        // Add event to list
        public void AddEvent(VolunteerEvent e)
        {
            VolunteerEvents.Add(e);
            SortEvents();
        }

        public void PrintEvents()
        {
            if (VolunteerEvents.Count > 0)
            {
                foreach (VolunteerEvent e in VolunteerEvents)
                {
                    Print("Date:           " + e.EventDate);
                    Print("Event Name:     " + e.EventName);
                    Print("Nonprofit Name: " + e.NonprofitName);
                    Print("Nonprofit ID:   " + e.NonprofitID);
                }
            }
            else
            {
                Print("Nothing in Volunteer History"); 
            }
        }

        // Retrieve a particular event the user has attended
        public VolunteerEvent GetVolunteerEvent(string eventid) 
        {
            foreach(VolunteerEvent vevent in VolunteerEvents)
            {
                if(vevent.NonprofitID == eventid) {
                    return vevent;
                }
            }
            return null; 
        }

        // Remove an event from the list
        public VolunteerEvent RemoveVolunteerEvent(string eventid)
        {
            VolunteerEvent e = null;
            int index = -1;
            for(int i = 0; i < VolunteerEvents.Count; i++) 
            { 
                if(VolunteerEvents[i].EventID == eventid)
                {
                    index = i;
                    break; 
                }
            }
            if(index >= 0)
            {
                e = VolunteerEvents[index];
                VolunteerEvents.RemoveAt(index); 
            }
            return e;
        }

    }
}
