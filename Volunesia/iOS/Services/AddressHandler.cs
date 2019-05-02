﻿using System;
using System.Linq;
using System.Threading.Tasks;
using UIKit;
using Xamarin.Essentials;

namespace Volunesia.iOS.Services
{
    public class AddressHandler
    {
        /// <summary>
        /// Opens the maps with address asynchronously.
        /// </summary>
        /// <returns>The maps with address async.</returns>
        /// <param name="inpView">Inp view.</param>
        /// <param name="address">Address.</param>
        public static async Task OpenMapsWithAddressAsync(UIViewController inpView, string address)
        {
            try
            {
                //var address = "21321 Schultze Drive, Hawaiian Gardens, CA";
                var locations = await Geocoding.GetLocationsAsync(address);
                var options = new MapLaunchOptions { Name = address };
                var location = locations?.FirstOrDefault();
                if (location != null)
                {
                    await Map.OpenAsync(location, options);
                }
                else
                {
                    AlertShow.Print("Invalid Location");
                }
            }
#pragma warning disable CS0168 // Variable is declared but never used
            catch (FeatureNotSupportedException fnsEx)
#pragma warning restore CS0168 // Variable is declared but never used
            {
                // Feature not supported on device
            }
#pragma warning disable IDE0059 // Value assigned to symbol is never used
#pragma warning disable CS0168 // Variable is declared but never used
#pragma warning disable RECS0022 // A catch clause that catches System.Exception and has an empty body
            catch (Exception ex)
#pragma warning restore RECS0022 // A catch clause that catches System.Exception and has an empty body
#pragma warning restore CS0168 // Variable is declared but never used
#pragma warning restore IDE0059 // Value assigned to symbol is never used
            {
                AlertShow.Show(inpView, "Not a Valid Address", address + " could not be located");// Handle exception that may have occurred in geocoding
            }
        }

        /// <summary>
        /// Validates the address and moves to the next view controller
        /// </summary>
        /// <returns>The address.</returns>
        /// <param name="inpView">Inp view.</param>
        /// <param name="address">Address.</param>
        /// <param name="destination">Destination view controller segue_id.</param>
        public static async Task ValidateAddress(UIViewController inpView, string address, string destination)
        {
            try
            {
                //var address = "21321 Schultze Drive, Hawaiian Gardens, CA";
                var locations = await Geocoding.GetLocationsAsync(address);
                var options = new MapLaunchOptions { Name = address };
                var location = locations?.FirstOrDefault();
                if (location != null)
                {
                    inpView.PerformSegue(destination, inpView);
                }
                else
                {
                    AlertShow.Print("Invalid Location");
                }
            }
#pragma warning disable CS0168 // Variable is declared but never used
            catch (FeatureNotSupportedException fnsEx)
#pragma warning restore CS0168 // Variable is declared but never used
            {
                // Feature not supported on device
            }
#pragma warning disable IDE0059 // Value assigned to symbol is never used
#pragma warning disable CS0168 // Variable is declared but never used
#pragma warning disable RECS0022 // A catch clause that catches System.Exception and has an empty body
            catch (Exception ex)
#pragma warning restore RECS0022 // A catch clause that catches System.Exception and has an empty body
#pragma warning restore CS0168 // Variable is declared but never used
#pragma warning restore IDE0059 // Value assigned to symbol is never used
            {
                AlertShow.Show(inpView, "Not a Valid Address", address + " could not be located");// Handle exception that may have occurred in geocoding
            }
        }
    }
}
