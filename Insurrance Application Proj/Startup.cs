using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Insurrance_Application_Proj.Startup))]
namespace Insurrance_Application_Proj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
