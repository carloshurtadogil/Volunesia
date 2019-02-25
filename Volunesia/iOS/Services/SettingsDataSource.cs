using System;
using Foundation;
using UIKit;
using Volunesia.Services;
using Volunesia.iOS.Services;

namespace Volunesia.iOS.Services
{
    public class SettingsDataSource : UITableViewSource
    {
        readonly UIViewController SettingsController;

        public SettingsDataSource(UIViewController inpController)
        {
            SettingsController = inpController;
        }

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            AppData_iOS.GetInstance();

            UITableViewCell cell = tableView.DequeueReusableCell("SettingItem");

            if (indexPath.Row == 0)
            {
                cell.TextLabel.Text = "Email";
                if(AppData.CurUser != null)
                {
                    cell.DetailTextLabel.Text = AppData.CurUser.EmailAddress;
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("AppData is null"); 
                }
            }
            else if (indexPath.Row == 1)
            {
                cell.TextLabel.Text = "Password";
                cell.DetailTextLabel.Text = "";
            }
            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            SettingsController.PerformSegue("ToSettingsChangeSegue_id", indexPath);
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            return 2;
        }
    }
}
