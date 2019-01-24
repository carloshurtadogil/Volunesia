using System;
namespace Volunesia.Models
{
    public class NonprofitRepresentative
    {
        // Nonprofit Representative's position title
        public string Position    { get; set; }

        // Flag to determine if representative can post an event
        public bool   Poster      { get; set; }

        // Flag to determine if representative can review an application
        public bool   Reviewer    { get; set; }

        // Flag to determine if representative can add, remove, or edit another representative and their permissions
        public bool   RepsManager { get; set; }
    }
}
