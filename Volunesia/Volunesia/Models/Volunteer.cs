using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Volunteer : User
    {
        public string personalDescription { get; set; }
        public int level { get; set; }
        public long minutes { get; set; }
    }
}
