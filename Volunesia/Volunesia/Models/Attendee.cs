using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Attendee
    {
        //The Attendee's status for a particular event
        public Status ReservationStatus { get; set; }
        //Flag to represent whether or not a Volunteer attended the event
        public bool   Attended          { get; set; }
        //The event duration in minutes (to be converted to hours in other components)
        public int    HoursCompleted    { get; set; }
        //The attendee's UID
        public int    UID               { get; set; }
    }
}
