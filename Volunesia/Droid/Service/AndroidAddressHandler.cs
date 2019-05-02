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
using Xamarin.Essentials;

namespace Volunesia.Droid.Service
{
    public class AndroidAddressHandler
    {

        public AndroidAddressHandler()
        {

        }

        /// <summary>
        /// Validates a location using the Geocoding API
        /// </summary>
        /// <param name="address"></param>
        /// <returns></returns>
        public async System.Threading.Tasks.Task<bool> ValidateLocationAsync(string address)
        {

            bool locationIsValid = false;

            try
            {
                var locations = await Geocoding.GetLocationsAsync(address);

                var location = locations?.FirstOrDefault();
                if (location != null)
                {
                    locationIsValid = true;
                }
            }
            catch (FeatureNotSupportedException fnsEx)
            {
                // Feature not supported on device
            }
            catch (Exception ex)
            {
                // Handle exception that may have occurred in geocoding
            }
            return locationIsValid;
        }
    }
}