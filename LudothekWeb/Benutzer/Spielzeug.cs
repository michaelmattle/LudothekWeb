using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LudothekWeb.Benutzer
{
    public class Spielzeug
    {
        public string SpielzeugID { set; get; }
        public string Name { set; get; }

        public Spielzeug()
        {
            SpielzeugID = Guid.NewGuid().ToString();
        }
    }
}