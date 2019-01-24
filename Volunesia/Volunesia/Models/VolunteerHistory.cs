using System;
using System.Collections.Generic;

namespace Volunesia.Models
{
    public class VolunteerHistory
    {
        // List of events that the user has attended and hours they have inputted
        public Dictionary<Event, int> VolunteeringHours { get; set; }
    }
}
