using System;
using System.Globalization;

namespace Volunesia.iOS.Services
{
    public static class DateFormatter
    {
        /// <summary>
        /// Format how the textfield should be formatted
        /// </summary>
        /// <returns>The newly formatted DateTime string</returns>
        /// <param name="e">The DateTime object to be formatted.</param>
        public static string FormatEventTimeTextfield(DateTime e)
        {
            if (e.ToString() != "1/1/0001 12:00:00 AM")
            {
                DateTime now = DateTime.Now;
                string msg = "";
                if (e.Day == now.Day && e.Month == now.Month && e.Year == now.Year)
                {
                    msg += "Today at ";
                }
                else
                {
                    string mon = DateTimeFormatInfo.CurrentInfo.GetAbbreviatedMonthName(e.Month);
                    msg += (mon + " " + e.Day + " at ");
                }


                int h = e.Hour;
                if (h > 12)
                {
                    h -= 12;
                }

                msg += h.ToString();

                if (e.Minute == 0)
                {
                    msg += " ";
                }
                else
                {
                    if (e.Minute < 10)
                    {
                        msg += (":0" + e.Minute.ToString() + " ");
                    }
                    else
                    {
                        msg += (":" + e.Minute.ToString() + " ");
                    }
                }

                msg += e.ToString("tt", CultureInfo.InvariantCulture);

                return msg;
            }
            return "";
        }
    }
}
