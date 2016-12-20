using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LudothekWeb.Startup))]
namespace LudothekWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
