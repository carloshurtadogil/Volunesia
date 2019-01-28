using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Attendee
    {
        public Status ReservationStatus { get; set; }
        public bool Attended { get; set; }
        public int HoursCompleted { get; set; }
    }
}
