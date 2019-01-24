using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    class NonprofitRepresentative : User
    {
        public string Position { get; set; }
        public bool Poster { get; set; }
        public bool Reviewer { get; set; }
        public bool RepsManager { get; set; }
    }
}
