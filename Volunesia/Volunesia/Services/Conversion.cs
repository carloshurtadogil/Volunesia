using System;
using System.Collections.Generic;
using System.Text;
using Volunesia.Models;

namespace Volunesia.Services
{
    public class Conversion
    {
        public Conversion()
        {

        }

        //Takes a volunteer's minutes of volunteering and converts them to points
        public int ConvertVolunteerHoursToExperiencePoints(int hoursCompletedForVolunteer)
        {
            return hoursCompletedForVolunteer * 200;
        }
    }
}
