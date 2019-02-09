using System;
namespace Volunesia.Services
{
    public class IDGenerator
    {
        public string GenerateID()
        {
            DateTime t = DateTime.Now;
            TimeSpan ts = DateTime.Now.TimeOfDay;
            string id  = t.Day.ToString() + t.Month.ToString() + t.Year.ToString() + 
                         (ts.Hours + ts.Minutes + ts.Seconds + ts.Milliseconds);
            return id;
        }

        public string GenerateEstablishedID(string ein)
        {
            string id = ein + GenerateID();
            return id;
        }
    }
}
