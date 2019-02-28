using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class AllEventsDataSource : UITableViewSource
    {
        public UIViewController HomeController;

        public AllEventsDataSource(UIViewController inpView)
        {
            HomeController = inpView;
        }

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("EventItem");
            cell.TextLabel.Text = "All Events";
            cell.DetailTextLabel.Text = "To be implemented";
            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            //base.RowSelected(tableView, indexPath);
            AlertShow.Show(HomeController, "View Event Controller", "To be implemented");
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            return 1;
        }
    }
}
