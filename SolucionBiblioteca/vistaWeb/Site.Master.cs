using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblConectados.Text = Application["Conectados"].ToString();

            if (Session["Usuario"]==null)
            {
                lblUsuario.Text = "Anonimo";
            }
            else
            {
                lblUsuario.Text = Session["Usuario"].ToString();
            }

        }
    }
}