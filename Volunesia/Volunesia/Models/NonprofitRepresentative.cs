using System;
namespace Volunesia.Models
{
    public class NonprofitRepresentative
    {
        //The user who belongs in this organization
        public string UID         { get; set; }

        // Nonprofit Representative's position title
        public string Position    { get; set; }

        // Flag to determine if representative can post an event
        public string Poster      { get; set; }

        // Flag to determine if representative can review an application
        public string Reviewer    { get; set; }

        // Flag to determine if representative can add, remove, or edit another representative and their permissions
        public string RepsManager { get; set; }

        //Nonprofit that the user is associated with
        public string AssociatedNonprofit { get; set; }
    }
}
