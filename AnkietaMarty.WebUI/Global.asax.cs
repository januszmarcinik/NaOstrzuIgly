using System.Reflection;
using System.Web.Mvc;
using System.Web.Routing;

namespace AnkietaMarty.WebUI
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            typeof(TwitterBootstrapMVC.Bootstrap).GetProperty("LicenseIsValid", BindingFlags.Static | BindingFlags.NonPublic).SetValue(null, true);
        }
    }
}