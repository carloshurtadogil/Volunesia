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

        /// <summary>
        /// Takes a volunteer's minutes of volunteering and converts them to points
        /// </summary>
        /// <returns>The volunteer hours to experience points.</returns>
        /// <param name="hoursCompletedForVolunteer">Hours completed for volunteer.</param>
        public double ConvertVolunteerHoursToExperiencePoints(double hoursCompletedForVolunteer)
        {
            return hoursCompletedForVolunteer * 200;
        }
    }
}
