using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Waitlist
    {
        public List<string> WaitlistRoster { get; set; }
        public int WaitlistCapacity { get; set; }
    }
}
