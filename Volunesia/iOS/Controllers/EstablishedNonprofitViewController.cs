using Foundation;
using System;
using System.IO;
using SmartyStreets;
using SmartyStreets.USZipCodeApi;
using System.Linq;
using UIKit;
using Xamarin.Essentials;

namespace Volunesia.iOS
{
    public partial class EstablishedNonprofitViewController : UIViewController
    {
        public EstablishedNonprofitViewController(IntPtr handle) : base(handle)
        {
        }

        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);

            if (segue.Identifier == "ToOrgTypeSegue_id")
            {
                var nptsc = (NPTypeSelectionController)segue.DestinationViewController;
                if (nptsc != null)
                {

                    nptsc.LoadView();
                }
            }
            else
            {
                AlertShow.Show(this, "Segue Failure", "ViewController.cs");
            }
        }

        partial void ContinueButton_TouchUpInside(UIButton sender)
        {
            //VerifyZip();
        }

        public bool VerifyCity()
        {
            string city = CityTextfield.Text.Trim();
            if(city.Length > 0) 
            {
               return true; 
            }
            return false;
        }

        public bool ValidName() 
        {
            string name = OrganizationNameTextfield.Text.Trim(); 
            if(name.Length > 2) 
            {
                return true; 
            }
            return false;
        }

        public bool VerifyEIN() //To be continued
        {
            string ein = EINTextfield.Text.Trim();

            if(ein.Length == 10) 
            {
                return true; 
            }

            return false;
        }

        public bool VerifyZip()
        {//To be continued
            string zip = ZipCodeTextfield.Text.Trim();
            if((zip.Length >= 5)  && (zip.Length <=10))
            {
                return true; 
            }

            return false;
        }
}