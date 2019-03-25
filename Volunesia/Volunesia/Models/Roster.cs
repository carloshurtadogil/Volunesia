using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Roster
    {
        //List of Attendees for a particular event
        public List<Attendee> AttendeeList;

        /// <summary>
        /// Default Constructor for the Roster class
        /// </summary>
        public Roster() 
        {
            AttendeeList = new List<Attendee>(); 
        }

        /// <summary>
        /// Add a new Attendee to the Roster
        /// </summary>
        /// <param name="a">The attendee to be added.</param>
        public void Add(Attendee a)
        {
            AttendeeList.Add(a);
        }
    }
}
