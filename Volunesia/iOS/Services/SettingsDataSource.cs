using System;
using Foundation;
using UIKit;

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
            UITableViewCell cell = tableView.DequeueReusableCell("SettingItem");
            cell.TextLabel.Text = "Name";
            cell.DetailTextLabel.Text = "Carlos Hurtado";
            return cell;
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            return 1;
        }
    }
}
