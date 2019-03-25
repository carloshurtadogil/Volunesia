using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Waitlist
    {
        //IDs of all users in the waitlist
        public List<Attendee> WaitlistRoster { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="T:Volunesia.Models.Waitlist"/> class.
        /// </summary>
        public Waitlist()
        {
            WaitlistRoster = new List<Attendee>();
        }

        /// <summary>
        /// Add a new Attendee to the Waitlist
        /// </summary>
        /// <param name="a">The next attendee who is waiting to participate in the event</param>
        public void Add(Attendee a) 
        {
            WaitlistRoster.Add(a); 
        }

        /// <summary>
        /// Find a specific attendee in the waitlist
        /// </summary>
        /// <returns>The attendee.</returns>
        /// <param name="uid">Uid.</param>
        public Attendee FindAttendee(string uid)
        {
            foreach(var attendee in WaitlistRoster)
            {
                if(attendee.UID == uid) 
                {
                    return attendee;
                }
            }
            return null;
        }
    }
}
