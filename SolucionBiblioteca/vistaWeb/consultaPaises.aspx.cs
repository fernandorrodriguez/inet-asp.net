using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class consultaPaises : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            traerPaises();
        }

        void traerPaises()
        {
            Logica.Pais logicaPais = new Logica.Pais();
            gvPaises.DataSource = logicaPais.traerTodos();
            gvPaises.DataBind(); //enlaza origen de datos al control del grid
            
        }
    }
}