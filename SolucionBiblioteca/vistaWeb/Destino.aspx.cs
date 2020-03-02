using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Destino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDato.Text = Request.QueryString["valor"].ToString(); //los datos que se envian de origen
                                                                    //los lee en una coleccion de QueryString

        }
    }
}