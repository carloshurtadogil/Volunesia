using System;
namespace Volunesia.Models
{
    public class VolunteerEvent
    {
        // Flag to determine if user has attended the event
        public string Attended      { get; set; }
        // ID of the event
        public string EventID       { get; set; }
        // Date the event took place 
        public DateTime EventDate   { get; set; }
        // Name of the event
        public string EventName     { get; set; }
        // Number of hours completed, if attended
        public double HoursCompleted { get; set; }
        // ID of the nonprofit
        public string NonprofitID   { get; set; }
        // Name of the nonprofit
        public string NonprofitName { get; set; }
    }
}
