using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class CacheSinTiempo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { TraerLibros(); Actualizar(); }
        }
        void TraerLibros()
        {
            DatosXML.Libro objLibro = new DatosXML.Libro();
            DataView dvLibros = objLibro.TraerTodos(); //trae todos los dataview
            Cache["Libros"] = dvLibros;//y los guarda en el cache

        }
        void Actualizar()
        {
            gvLibros.DataSource = (DataView)Cache["Libros"]; //casteo
            gvLibros.DataBind();
        }

        protected void gvLibros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvLibros.PageIndex = e.NewPageIndex;//cada cambio de pagina
            Actualizar();//realiza esto

        }
    }
}