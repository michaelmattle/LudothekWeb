using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace LudothekWeb.Benutzer
{
    public class SpielVerwaltung
    {
        public List<Spielzeug> Spielzeuge { set; get; }
        private string csvPfad;

        public SpielVerwaltung(string pfad)
        {
            csvPfad = pfad;
            Spielzeuge = LeseSpielzeugCsv();
        }

        private List<Spielzeug> LeseSpielzeugCsv()
        {
            FileStream stream = new FileStream(csvPfad, FileMode.Open);
            StreamReader rdrd = new StreamReader(stream);
            string row = "";
            var spielzeugListe = new List<Spielzeug>();

            while (!rdrd.EndOfStream)
            {
                row = rdrd.ReadLine();
                string[] spielzeugItems = row.Split(',');
                spielzeugListe.Add(new Spielzeug { SpielzeugID = spielzeugItems[0], Name=spielzeugItems[1] });
            }

            rdrd.Close();
            return spielzeugListe;
        }

        public Spielzeug GibSpielzeugDurchID(string id)
        {
            foreach ( var spielzeug in Spielzeuge )
            {
                if ( spielzeug.SpielzeugID == id)
                    return spielzeug;
            }
            return null;
        }

        private void SpeichereSpielzeug()
        {
            FileStream stream = new FileStream(csvPfad, FileMode.Append);
            StreamWriter wrtr = new StreamWriter(stream);
            var content = "";

            foreach (var spielzeug in Spielzeuge)
            {
                var row = spielzeug.SpielzeugID + "," + spielzeug.Name;
                content += row + Environment.NewLine;
            }

            wrtr.WriteLine(content);
            wrtr.Close();
        }
    }
}