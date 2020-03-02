using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Origen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // tomo el valor del txtDato.
            string strValor = txtDato.Text;

            // redirecciono a la pagina destino.aspx con el parametro
            // strValor
            Response.Redirect("~/Destino.aspx?valor=" + strValor); //se ve desde la url


        }
    }
}