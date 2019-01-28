using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Nonprofit
    {
        public int NonProfitID { get; set; }
        public string NonProfitName { get; set; }
        public string PrimaryRepresentative { get; set; }
        public string DefaultPhone { get; set; }
        public string ZipCode { get; set; }
    }
}
