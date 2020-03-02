using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class AltaAutor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            traerPaises();
        }

        void traerPaises() {

            Logica.Pais logicaPais = new Logica.Pais();
            ddlPaises.DataSource = logicaPais.traerTodos();
            ddlPaises.DataTextField = "Nombre"; //campo a mostrar
            ddlPaises.DataValueField = "ID"; //campo a guardar
            ddlPaises.DataBind();

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) //si todos los validadores son true, entra en el if, valida del lado del servidor
            {
                //datos validados
                Entidades.Autor objEntidadAutor = new Entidades.Autor();
                Entidades.Pais objEntidadPais = new Entidades.Pais();
                Logica.Autor objLogicaAutor = new Logica.Autor();
                objEntidadAutor.Apellido = txtApellido.Text;
                objEntidadAutor.Nombre = txtNombre.Text;
                objEntidadAutor.FechaNacimiento = Convert.ToDateTime(txtFecha.Text);
                objEntidadPais.ID = Convert.ToInt32(ddlPaises.SelectedValue); //toma el id del combo
                objEntidadAutor.Pais = objEntidadPais;
                objLogicaAutor.agregar(objEntidadAutor);
                lblMensaje.Text = "Autor agregado a la base de datos";

            }
            else
            {
                //datos no validados
                lblMensaje.Text = "Datos NO validados!"; //no deberia aparecer el mensaje ya que no llega al servidor, a menos que no valide el js o hackeen
            }
        }
    }
}