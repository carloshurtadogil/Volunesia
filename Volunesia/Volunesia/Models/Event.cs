using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Event
    {
        public int EventID { get; set; }
        public string EventName { get; set; }
        public DateTime EventDate { get; set; }
        //public Roster Roster{ get; set; }
        public DateTime ApplicationDate { get; set; }

    }
}
