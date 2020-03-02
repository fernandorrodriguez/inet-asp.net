using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Cierre : Utilidad
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon(); //esto hace que se dispare el session_end del global.asax
            MsgBox("Su sesion ha finalizado");
        }
    }
}