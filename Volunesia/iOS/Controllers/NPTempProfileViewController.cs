using Foundation;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using UIKit;
using Volunesia.iOS.Services;
using Volunesia.Models;
using Xamarin.Essentials;

namespace Volunesia.iOS
{
    public partial class NPTempProfileViewController : UIViewController
    {
        public Nonprofit NonprofitOrg { get; set; }
        public string PrimaryEmail { get; set; }

        public NPTempProfileViewController (IntPtr handle) : base (handle)
        {
        }

        /// <summary>
        /// Load any and all information
        /// </summary>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            LoadInformation();
        }

        /// <summary>
        /// Loads the information.
        /// </summary>
        public void LoadInformation() 
        {
            UserNameLabel.Text = NonprofitOrg.NonprofitName;
            MissionStatementTextview.Text = NonprofitOrg.MissionStatement;
            EmailButton.SetTitle(PrimaryEmail, UIControlState.Normal);
            LocationTextLabel.Text = NonprofitOrg.City + ", " + NonprofitOrg.State + " " + NonprofitOrg.ZipCode;
            var phone = Convert.ToInt64(NonprofitOrg.DefaultPhone);
            if (phone.ToString().Length == 10)
            {
                string formattedphone = String.Format("{0:(###) ###-####}", phone);
                PhoneButton.SetTitle(formattedphone, UIControlState.Normal);
            }
            else if (phone.ToString().Length == 11)
            {
                string formattedphone = String.Format("{0:# (###) ###-####}", phone);
                PhoneButton.SetTitle(formattedphone, UIControlState.Normal);
            }
        }

        /// <summary>
        /// Allow user to draft an email to the nonprofit organization
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void EmailButton_TouchUpInside(UIButton sender)
        {
#pragma warning disable CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
            AlertShow.PermissionToAccessEmailApp(this, PrimaryEmail);
#pragma warning restore CS4014 // Because this call is not awaited, execution of the current method continues before the call is completed
        }



        /// <summary>
        /// Return to the previous view controller
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }



        /// <summary>
        /// Make a phone call to the nonprofit
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void PhoneButton_TouchUpInside(UIButton sender)
        {
            var number = Convert.ToInt64(NonprofitOrg.DefaultPhone);
            var url = new Foundation.NSUrl("tel:" + number);
            UIApplication.SharedApplication.OpenUrl(url);
        }




    }
}