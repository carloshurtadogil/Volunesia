using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Nonprofit
    {
        public int nonProfitID { get; set; }
        public string nonProfitName { get; set; }
        public string primaryRepresentative { get; set; }
        public string defaultPhone { get; set; }
        public string zipCode { get; set; }
    }
}
