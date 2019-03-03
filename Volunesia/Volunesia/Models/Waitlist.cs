using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Waitlist
    {
        //IDs of all users in the waitlist
        public List<Attendee> WaitlistRoster { get; set; }
    }
}
