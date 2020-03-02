using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class Autor
    {
        Datos.Autor objDatos = new Datos.Autor();

        public void agregar(Entidades.Autor autor)
        {

            objDatos.agregar(autor);
        }

        public DataTable TraerTodos()
        {           
            return objDatos.TraerTodos();
        }
    }
}
