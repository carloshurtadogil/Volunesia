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
    }
}
