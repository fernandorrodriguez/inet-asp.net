using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Session : Utilidad
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = txtUsuario.Text;//guarda en una session el nombre del texto como estado
            //MsgBox("Nombre de usuario guardado!");
            Response.Redirect("Default.aspx");

        }
    }
}