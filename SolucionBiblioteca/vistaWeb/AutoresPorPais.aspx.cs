using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class AutoresPorPais : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Logica.Pais objLogicaPais = new Logica.Pais();
                ddlPais.DataSource = objLogicaPais.traerTodos();
                ddlPais.DataTextField = "Nombre";
                ddlPais.DataValueField = "ID";
                ddlPais.DataBind();
            }
        }

        protected void btnPais_Click(object sender, EventArgs e)
        {
            //BibliotecaServicio.Biblioteca objBiblioteca = new BibliotecaServicio.Biblioteca();
            //int pais = Convert.ToInt32(ddlPais.SelectedValue);
            //lblCantidad.Text =  objBiblioteca.CantidadAutores(pais).ToString();

        }

        protected void ddlPais_SelectedIndexChanged(object sender, EventArgs e)
        {
            //este evento esta en stand by hasta que se hace postback
            BibliotecaServicio.Biblioteca objBiblioteca = new BibliotecaServicio.Biblioteca();
            int pais = Convert.ToInt32(ddlPais.SelectedValue);
            lblCantidad.Text = objBiblioteca.CantidadAutores(pais).ToString();
        }
    }
}