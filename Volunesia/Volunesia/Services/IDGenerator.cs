using System;
namespace Volunesia.Services
{
    public class IDGenerator
    {
        public string GenerateID()
        {
            Guid g;
            g = Guid.NewGuid();
            System.Diagnostics.Debug.WriteLine("ID: " + g);
            DateTime t = DateTime.Now;
            TimeSpan ts = DateTime.Now.TimeOfDay;
            //return t.Day.ToString() + t.Month.ToString() + t.Year.ToString() + 
            //       ts.Hours.ToString() + ts.Minutes.ToString() + ts.Seconds.ToString() + ts.Milliseconds.ToString();
            return g.ToString();

        }

        public string GenerateEstablishedID(string ein)
        {
            string id = ein + GenerateID();
            return id;
        }
    }
}
