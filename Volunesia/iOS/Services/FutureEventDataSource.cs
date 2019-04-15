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
            int i = indexPath.Row;
            if (AppData.FutureEvents != null && AppData.FutureEvents.Size() > 0)
            {
                if (i < AppData.FutureEvents.Size())
                {
                    string npid = AppData.FutureEvents.VolunteerEvents[i].NonprofitID;
                    string eventid = AppData.FutureEvents.VolunteerEvents[i].EventID;
                    FirebaseReader.ReadEvent(npid, eventid, HomeController, false);

                }
            }
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
