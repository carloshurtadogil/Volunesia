using System;
namespace Volunesia.Models
{
    public class NonprofitRepresentative
    {
        /// <summary>
        /// The user who belongs in this organization
        /// </summary>
        /// <value>The uid.</value>
        public string UID         { get; set; }

        /// <summary>
        /// Nonprofit Representative's position title
        /// </summary>
        /// <value>The position.</value>
        public string Position    { get; set; }

        /// <summary>
        /// Flag to determine if representative can post an event
        /// </summary>
        /// <value>The poster.</value>
        public string Poster      { get; set; }

        /// <summary>
        /// Flag to determine if representative can review an application
        /// </summary>
        /// <value>The reviewer.</value>
        public string Reviewer    { get; set; }

        /// <summary>
        /// Flag to determine if representative can add, remove, or edit another representative and their permissions
        /// </summary>
        /// <value>The reps manager.</value>
        public string RepsManager { get; set; }

        /// <summary>
        /// Nonprofit ID that the user is associated with
        /// </summary>
        /// <value>The associated nonprofit.</value>
        public string AssociatedNonprofit { get; set; }

        /// <summary>
        /// Associated np name
        /// </summary>
        /// <value>The name of the associated nonprofit.</value>
        public string AssociatedNonprofitName { get; set; }
    }
}
