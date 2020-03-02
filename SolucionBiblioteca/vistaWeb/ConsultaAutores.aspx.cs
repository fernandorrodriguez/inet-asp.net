using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class ConsultaAutores : System.Web.UI.Page
    {
        static int contador = 20; //el valor inicial es estatico
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack) //esto sirve para que que comprobar que una accion se realice una sola vez, que el metodo se ejecute una sola vez cuando cargo la pagina
            {
                TraerAutores();
            }
         
        }

        void TraerAutores()
        {
            Logica.Autor logicaAutor = new Logica.Autor();
            gvAutores.DataSource = logicaAutor.TraerTodos();
            gvAutores.DataBind();

        }

        protected void gvAutores_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAutores.PageIndex = e.NewPageIndex; //es el encargado de la paginacion
            TraerAutores();
        }

        protected void tmrPanel_Tick(object sender, EventArgs e)
        {
            //lblTimer.Text = "Se actualiza en: " + contador.ToString() + " segundos";
            lblTimer.Text = $"Se actualiza en: {contador}"; //ahorra memoria por string
            contador--;

            if(contador == 0)
            {
                TraerAutores();
                contador = 20;
            }
            
        }
    }
}