﻿using System;
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

        /// <summary>
        /// Sort events by date
        /// </summary>
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

        /// <summary>
        /// Size this instance.
        /// </summary>
        /// <returns>The size.</returns>
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

        /// <summary>
        /// Prints the events.
        /// </summary>
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


        /// <summary>
        /// Retrieve a particular event the user has attended
        /// </summary>
        /// <returns>The volunteer event.</returns>
        /// <param name="eventid">Eventid.</param>
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

        /// <summary>
        /// Remove an event from the list
        /// </summary>
        /// <returns>The volunteer event.</returns>
        /// <param name="eventid">Eventid.</param>
        public VolunteerEvent RemoveVolunteerEvent(string eventid)
        {
            VolunteerEvent e = null;
            if(VolunteerEvents != null) 
            {
                if(VolunteerEvents.Count == 1)
                {
                    VolunteerEvents.RemoveAt(0); 
                } 
                else if (VolunteerEvents.Count > 1) 
                {
                    for (int i = 0; i < VolunteerEvents.Count; i++)
                    {
                        if (VolunteerEvents[i].EventID == eventid)
                        {
                            System.Diagnostics.Debug.WriteLine("Index: " + i);
                            e = VolunteerEvents[i];
                            VolunteerEvents.RemoveAt(i);
                            break;
                        }
                    }
                }
            }
            return e;
        }

    }
}
