using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Volunesia.Models;
using Volunesia.Services;

namespace Volunesia.iOS.Services
{
    public class FutureEventDataSource : UITableViewSource
    {
        public UIViewController HomeController;

        public FutureEventDataSource(UIViewController inpView)
        {
            HomeController = inpView;
        }

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("EventItem");
            AppData.GetInstance();
            List<VolunteerEvent> e = AppData.FutureEvents.VolunteerEvents;
            if (indexPath.Row < e.Count)
            {
                VolunteerEvent ve = e[indexPath.Row];
                System.Diagnostics.Debug.WriteLine("Row: " + indexPath.Row);
                cell.TextLabel.Text = ve.EventName + " with " + ve.NonprofitName;
                cell.DetailTextLabel.Text = e[indexPath.Row].EventDate.ToString();
            }
            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            //base.RowSelected(tableView, indexPath);
            AlertShow.Show(HomeController, "View Event Controller", "To be implemented");
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            AppData_iOS.GetInstance();
            if (AppData.FutureEvents != null)
            {
                return AppData.FutureEvents.Size();
            }
            return 0;
        }
    }
}
