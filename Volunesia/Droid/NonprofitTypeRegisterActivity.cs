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

namespace Volunesia.Droid
{
    [Activity(Label = "NonprofitRegisterActivity")]
    public class NonprofitTypeRegisterActivity : Activity
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            //var establishedNPButton = FindViewById<Button>(Resource.Id.)
        }
    }
}