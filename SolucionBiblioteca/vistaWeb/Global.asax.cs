using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace vistaWeb
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Código que se ejecuta al iniciar la aplicación
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //el primer usuario es el que inicia la app, los demas inician sesion

            Application["Conectados"] = 0; //variable de aplicacion, array de objetos
        }

        void Session_Start(object sender, EventArgs e)
        {
            //codigo por cada nueva sesion

            Application["Conectados"] = Convert.ToInt32(Application["Conectados"]) + 1;

        }

        void Session_End(object sender, EventArgs e)
        {
            //codigo por cada cierre de sesion
            Application["Conectados"] = Convert.ToInt32(Application["Conectados"]) - 1;
        }
    }
}