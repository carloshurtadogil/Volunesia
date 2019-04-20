using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Attendee
    {
        //The Attendee's status for a particular event
        public string ReservationStatus { get; set; }
        //Flag to represent whether or not a Volunteer attended the event
        public bool   Attended          { get; set; }
        //The amount of hours a volunteered for a particular event
        public double    HoursCompleted    { get; set; }
        //The attendee's UID
        public string    UID            { get; set; }
        //The attendee's email address
        public string EmailAddress      { get; set; }
        //The attendee's check in time
        public DateTime CheckInTime       { get; set; }
    }
}
