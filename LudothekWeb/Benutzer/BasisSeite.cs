using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using LudothekWeb.Models;

namespace LudothekWeb.Benutzer
{
    public class BasisSeite : Page
    {
        public ApplicationUser AngemeldeterBenuzter { get; set; }
        public UserManager<ApplicationUser> BenutzerVerwaltung { get; set; }

        public BasisSeite()
        {
            if (!User.Identity.IsAuthenticated)
            {
                HttpContext.Current.Response.Redirect("/Acount/Login");
            }

            BenutzerVerwaltung = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            AngemeldeterBenuzter = BenutzerVerwaltung.FindById(User.Identity.GetUserId());
        }
    }
}