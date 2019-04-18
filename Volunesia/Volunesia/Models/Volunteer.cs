using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Volunteer : User
    {
        
        //Personal description that the volunteer used (Optional)
        public string PersonalDescription { get; set; }
        //Volunteer level
        public int    Level               { get; set; }
        //The list of badges that the volunteer has gained
        public List<BadgeCategory.Badge> BadgeList             { get; set; }
        //The amount of experience points a volunteer has
        public double Experience { get; set; }

    }
}
