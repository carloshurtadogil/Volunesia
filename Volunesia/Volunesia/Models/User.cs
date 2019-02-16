using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class User
    {
        //The user's first name
        public string FirstName    { get; set; }
        //The user's last name
        public string LastName     { get; set; }
        //The user's email (will serve as their login identifier)
        public string EmailAddress { get; set; }
        //The user's User ID (will connect to user's data)
        public string UID          { get; set; }
        //Flag to determine if user is nonprofit representative or volunteer
        public string UserType     { get; set; }
        //Anything that the user wishes to say to the crowd
        public string PersonalStatement { get; set; }
        //Write full user information to console
        public void UserDesc()
        {
            System.Diagnostics.Debug.WriteLine("First: " + FirstName);
            System.Diagnostics.Debug.WriteLine("Last:  " + LastName);
            System.Diagnostics.Debug.WriteLine("Email: " + EmailAddress);
            System.Diagnostics.Debug.WriteLine("UID:   " + UID);
            System.Diagnostics.Debug.WriteLine("Type:  " + UserType);
        }

    }
}
