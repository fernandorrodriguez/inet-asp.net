using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    internal static class Conexion //internal permite que solo las clases del mismo namespace tengan acceso
                            //la idea de la clase conexion es unificar la conexion para todas las clases de la capa de datos
    {
        internal static string strConexion = @"Server=(localdb)\server;DataBase=Biblioteca;Integrated Security=true";
        //Integrated Security es seguridad de windows
        //el arroba es por la contrabarra, que es de c#
        //static permite el acceso en forma directa a la propiedad


    }
}
