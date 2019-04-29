using Foundation;
using System;
using UIKit;

namespace Volunesia.iOS
{
    public partial class NPTempProfileViewController : UIViewController
    {
        public NPTempProfileViewController (IntPtr handle) : base (handle)
        {
        }

        /// <summary>
        /// Return to the previous view controller
        /// </summary>
        /// <param name="sender">Sender.</param>
        partial void BackButton_TouchUpInside(UIButton sender)
        {
            this.DismissViewController(true, null);
        }
    }
}