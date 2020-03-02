using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Logica
{
    public class Editorial
    {
        Datos.Editorial objDatos = new Datos.Editorial(); //global para toda la clase

        public void Agregar(Entidades.Editorial editorial)
        {

            objDatos.Agregar(editorial);


        }

        public DataTable traerTodos()
        {
            return objDatos.traerTodos();
        }
    }
}
