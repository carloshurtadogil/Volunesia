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
    [Activity(Label = "VolunteerRegisterActivity")]
    public class VolunteerRegisterActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            //Set VolunteerRegister view
            SetContentView(Resource.Layout.VolunteerRegister);

            
            // Create your application here
        }
    }
}