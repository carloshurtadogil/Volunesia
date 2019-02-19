using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class BadgeCategory
    {
        //The levels that a Volunteer can achieve depending on the amount of hours they have committed.
        public enum Badge
        {
            Novice,
            Intermediate,
            Advanced,
            Expert,
            Grandmaster
        }
    }
}
