using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Roster
    {
        //List of Attendees for a particular event
        private List<Attendee> AttendeeList;

        /// <summary>
        /// Default Constructor for the Roster class
        /// </summary>
        public Roster() 
        {
            AttendeeList = new List<Attendee>(); 
        }


        /// <summary>
        /// Gets the attendee.
        /// </summary>
        /// <returns>The attendee.</returns>
        /// <param name="i">The index of the attendee.</param>
        public Attendee GetAttendee(int i)
        {
            if(i < AttendeeList.Count)
            {
                return AttendeeList[i]; 
            }
            return null;
        }

        // <summary>
        /// Return the size of the AttendeeList
        /// </summary>
        /// <returns>The size.</returns>/
        public int Size()
        {
            return AttendeeList.Count; 
        }

        /// <summary>
        /// Add a new Attendee to the Roster
        /// </summary>
        /// <param name="a">The attendee to be added.</param>
        public void Add(Attendee a)
        {
            bool rejection = false;
            foreach (Attendee attendee in AttendeeList)
            {
                if(a.UID == attendee.UID)
                {
                    rejection = true;
                } 
            }
            if(!rejection)
            {
                AttendeeList.Add(a); 
            }
        }

        /// <summary>
        /// Remove any and all duplicates from AttendeeList
        /// </summary>
        public void RemoveDuplicates()
        {
            List<int> indices = new List<int>();//indices of all duplicates to be removed
            Attendee test = null;
            for(int i = 0; i < Size(); i++)
            {
                if (test == null)
                {
                    test = AttendeeList[i]; 
                }
                else if (AttendeeList[i].UID == test.UID)
                {
                    indices.Add(i);
                    test = null;
                }
            } 

            foreach(int i in indices)
            {
                AttendeeList.RemoveAt(i); 
            }
        }


    }
}
