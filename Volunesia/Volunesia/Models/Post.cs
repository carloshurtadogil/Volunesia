using System;
using System.Collections.Generic;
using System.Text;

namespace Volunesia.Models
{
    public class Post
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime DatePosted { get; set; }
        public Event EventForPost { get; set; }
        public List<Review> ReviewsForPost { get; set; }

    }
}
