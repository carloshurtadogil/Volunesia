using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Volunteer : User
    {
        public string PersonalDescription { get; set; }
        public int Level { get; set; }
        public long Minutes { get; set; }
    }
}
