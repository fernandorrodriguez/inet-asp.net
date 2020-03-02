using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Outputcache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblfecha.Text = DateTime.Now.ToString(); //constante refresco por el postback
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            //solo el click del boton hace postback aunque no ejecute ningun codigo
        }
    }
}