using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class User
    {
        /// <summary>
        /// The user's first name
        /// </summary>
        /// <value>The first name.</value>
        public string FirstName    { get; set; }

        /// <summary>
        /// The user's last name
        /// </summary>
        /// <value>The last name.</value>
        public string LastName     { get; set; }

        /// <summary>
        /// The user's email (will serve as their login identifier)
        /// </summary>
        /// <value>The email address.</value>
        public string EmailAddress { get; set; }

        /// <summary>
        /// The user's User ID (will connect to user's data)
        /// </summary>
        /// <value>The uid.</value>
        public string UID { get; set; }

        /// <summary>
        /// Flag to determine if user is nonprofit representative or volunteer
        /// </summary>
        /// <value>The type of the user.</value>
        public string UserType     { get; set; }

        /// <summary>
        /// Anything that the user wishes to say to the crowd
        /// </summary>
        /// <value>The personal statement.</value>
        public string PersonalStatement { get; set; }

        /// <summary>
        /// Flag to determine if the user has a profile picture
        /// </summary>
        /// <value>Y for yes, N for no.</value>
        public string HasProfilePicture { get; set; }

        /// <summary>
        /// Gets or sets the name of the profile image.
        /// </summary>
        /// <value>The name of the profile image.</value>
        public string ProfileImageName { get; set; }

    }
}
