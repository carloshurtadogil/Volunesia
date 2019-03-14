using System;
using UIKit;
using Volunesia.Models;
namespace Volunesia.iOS.Models
{
    public class Event_iOS
    {
        // The main details for a specific event
        public Event Event { get; set; }

        // The event cover photo associated with the event
        public UIImage CoverPhoto { get; set; }
    }
}
