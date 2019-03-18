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
        public bool SpecificNonprofit;

        public AllEventsDataSource(UIViewController inpView)
        {
            HomeController = inpView;
            SpecificNonprofit = false;
        }

        public AllEventsDataSource(UIViewController inpView, bool type) 
        {
            //AppData_iOS.SortNonprofitEventsByDate();
            AlertShow.Print("AllEventsDataSource Reached");
            HomeController = inpView;
            SpecificNonprofit = type;
        }

        public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("EventItem");
            if(AppData_iOS.NonprofitEvents != null)
            {
                AlertShow.Print("Get Cell Good to Go");
                List<Event> e = AppData_iOS.NonprofitEvents;
                int index = indexPath.Row;
                if(index < e.Count)
                {
                    Event eve = e[index];
                    cell.TextLabel.Text = eve.EventName;
                    cell.DetailTextLabel.Text = eve.EventDate.ToShortDateString();
                }
            }
            else
            {
                AlertShow.Print("Get Cell Null and Bad"); 
            }
            return cell;
        }

        public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
        {
            //base.RowSelected(tableView, indexPath);
            int i = indexPath.Row;

            if(AppData_iOS.NonprofitEvents != null)
            {
                if(i < AppData_iOS.NonprofitEvents.Count)
                {
                    Event e = AppData_iOS.NonprofitEvents[i];
                    NPProfileViewController npvc = (NPProfileViewController)HomeController;
                    npvc.Event = e;
                    npvc.PerformSegue("ToEventSegue_id", HomeController);
                }
            }
        }

        public override nint RowsInSection(UITableView tableview, nint section)
        {
            if(AppData_iOS.NonprofitEvents != null)
            {
                AlertShow.Print("Returning " + AppData_iOS.NonprofitEvents.Count + " rows");
                return AppData_iOS.NonprofitEvents.Count; 
            }
            return 0;
        }

        /// <summary>
        /// Populate the specified cell if for nonprofits
        /// </summary>
        /// <returns>The event cell.</returns>
        /// <param name="tableView">Table view.</param>
        /// <param name="indexPath">Index path.</param>
        public UITableViewCell NonprofitEventCell(UITableView tableView, NSIndexPath indexPath)
        {
            UITableViewCell cell = tableView.DequeueReusableCell("NonprofitEventItem");
            List<Event> e = AppData_iOS.NonprofitEvents;
            if (indexPath.Row < e.Count)
            {
                Event ve = e[indexPath.Row];
                System.Diagnostics.Debug.WriteLine("Row: " + indexPath.Row);
                cell.TextLabel.Text = ve.EventName;
                cell.DetailTextLabel.Text = e[indexPath.Row].EventDate.ToString();
            }
            return cell;
        }
    }
}
