using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using FireSharp.Config;
using FireSharp.Interfaces;

namespace Volunesia.Droid.Service
{
    public class FiresharpConfig
    {
        public static IFirebaseConfig GetFirebaseConfig()
        {
            IFirebaseConfig config = new FirebaseConfig
            {
                AuthSecret = "bjv4kn9YGRYWkib6d1TmWSLHCwUZvasjiFK7ovQX",
                BasePath = "https://volunesia-f5475.firebaseio.com"
            };
            return config;
        }
    }
}