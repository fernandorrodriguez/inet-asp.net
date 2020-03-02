using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vistaWeb
{
    public partial class altaPais : Utilidad
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) //si da true significa que todos los controles fueron validados, esto evita el hack
            {
                Entidades.Pais entidadPais = new Entidades.Pais();
                entidadPais.Nombre = txtNombre.Text;
                Logica.Pais logicaPais = new Logica.Pais();

                logicaPais.Agregar(entidadPais);

                
                MsgBox("Pais agregado!");
            }
            else
            {
                
                MsgBox("Datos NO validados!");
            }
        }
    }
}