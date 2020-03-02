using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Operaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSuma_Click(object sender, EventArgs e)
        {

            Aritmetica.Matematica objServicio = new Aritmetica.Matematica();
            int numeroUno = Convert.ToInt32(txtNumeroUno.Text);
            int numeroDos = Convert.ToInt32(txtNumeroDos.Text);
            int resultado = objServicio.operacion(ddlOperacion.SelectedItem.ToString(), numeroUno, numeroDos);
            lblResultado.Text = resultado.ToString();

        }
    }
}