using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LudothekWeb.Benutzer
{
    public class Ausleihe
    {
        public string AuleiheID { set; get; }
        public string BenutzerID { set; get; }
        public string SpielID { set; get; }
        public DateTime StartDatum { set; get; }
        public DateTime EndDatum { set; get; }

        public Ausleihe()
        {
            AuleiheID = Guid.NewGuid().ToString();
        }

        public bool istBenutzerAktiv()
        {
            if (DateTime.Now < EndDatum)
            {
                return true;
            }
            return false;
        }
    }
}