using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class Cookies : Utilidad
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // creo un objeto y leo la coleccion de cookies
            // del disco del usuario
            HttpCookie cookie = Request.Cookies["Valores"];

            // sino encuentra la cookie
            if (cookie == null)
            {
                cookie = new HttpCookie("Valores");
            }

            // guardo el contenido del txtCookie
            cookie["Dato"] = this.txtCookie.Text;

            cookie.Expires = DateTime.MaxValue; // cookie permanente
            Response.Cookies.Add(cookie);// guardo cookie en el disco

            MsgBox("Cookie guardada!");

        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            // intento traer la coleccion de cookies -> Valores
            HttpCookie cookie = Request.Cookies["Valores"];

            // si la cookie Valores NO existe
            if (cookie == null)
            {
                this.lblmensaje.Text = "No hay cookies guardadas";
            }
            else
            {
                // preguntar si existe Dato
                if (cookie["Dato"] == null)
                {
                    this.lblmensaje.Text = "No hay cookies guardadas";
                }
                else
                {
                    // existe dato , muestro su valor
                    this.lblValorCookie.Text = cookie["Dato"].ToString();
                }

            }
        }
    }
}