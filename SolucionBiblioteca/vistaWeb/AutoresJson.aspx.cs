using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class AutoresJson : System.Web.UI.Page
    {
        BibliotecaServicio.Biblioteca objServicio = new BibliotecaServicio.Biblioteca();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getJason();
            }

        }

        void getJason()
        {
            gvAutores.DataSource = DerializeDataTable();
            gvAutores.DataBind();
        }
        public DataTable DerializeDataTable()
        {
            string json = objServicio.GetAutoresJson().ToString();
            var table = JsonConvert.DeserializeObject<DataTable>(json);
            return table;
        }

    }
}