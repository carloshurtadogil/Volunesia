﻿using System;
using System.Collections.Generic;

namespace Volunesia.Models
{
    public class Event
    {

        // Last date for volunteers to apply to the event
        public DateTime ApplicationDeadline { get; set; }

        // Date of the event
        public DateTime EventDate           { get; set; }

        // The nonprofit in charge of the event
        public string   HostID              { get; set; }

        // Autogenerated ID of the event
        public string   EventID             { get; set; }

        // Name of the event
        public string   EventName           { get; set; }

        // The list of attendees
        public Roster   EventRoster         { get; set; }

        //Categories that describe the event
        public List<string> EventCategories { get; set; }

        // Those that are in the waitlist for the event
        public Waitlist Waitlist            { get; set; }

        // 
    }
}
