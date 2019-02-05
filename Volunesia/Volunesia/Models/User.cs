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

    }
}
