using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class AJAX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPagina.Text = DateTime.Now.ToString();
        }

        protected void btnPanel_Click(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(20000); //delay de 20 segundos en milisegundos 
            lblDentroDelPanel.Text = DateTime.Now.ToString();
        }

        protected void btnActualizarPagina_Click(object sender, EventArgs e)
        {
            lblFueraDelPanel.Text = DateTime.Now.ToString();
        }

        protected void btnExterno_Click(object sender, EventArgs e)
        {
            lblDentroDelPanel.Text = DateTime.Now.ToString();
        }

        protected void tmrPanel_Tick(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(20000);
            lblDentroDelPanel.Text = DateTime.Now.ToString();
        }
    }
}