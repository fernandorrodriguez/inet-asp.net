using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class altaEditorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) //si da true significa que todos los controles fueron validados, esto evita el hack
            {
                Entidades.Editorial entidadEditorial = new Entidades.Editorial();
                entidadEditorial.Nombre = txtNombre.Text;
                Logica.Editorial logicaEditorial = new Logica.Editorial();

                logicaEditorial.Agregar(entidadEditorial);
                lblMensaje.Text = "Editorial agregado!";
            }
            else
            {
                lblMensaje.Text = "Datos <b>no</b> validados!";
            }

            traerEditoriales();

        }

        void traerEditoriales()
        {
            Logica.Editorial logicaEditorial = new Logica.Editorial();
            gvEditorial.DataSource = logicaEditorial.traerTodos();
            gvEditorial.DataBind(); //enlaza origen de datos al control del grid

        }
    }
 }