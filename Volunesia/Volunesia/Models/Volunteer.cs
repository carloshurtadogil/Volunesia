using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Volunteer : User
    {
        //The current Volunteer
        public User   CurrentUser         { get; set; }
        //Personal description that the volunteer used (Optional)
        public string PersonalDescription { get; set; }
        //Volunteer level
        public int    Level               { get; set; }
        //The amount of time the user has spent volunteering
        public long   Minutes             { get; set; }
        //The list of badges that the volunteer has gained
        public List<BadgeCategory.Badge> BadgeList             { get; set; }

    }
}
