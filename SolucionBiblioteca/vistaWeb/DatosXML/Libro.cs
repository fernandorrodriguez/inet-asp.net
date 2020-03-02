using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace vistaWeb.DatosXML
{
    public class Libro
    {
        public DataView TraerTodos()
        {
            DataSet ds = new DataSet(); //con esto se lee el xml
            DataView dv = new DataView();

            ds.ReadXml(@"E:\inetfer2\cursoInet\.NET\clase13 (continuacion del 12)\clase11\SolucionBiblioteca\vistaWeb\DatosXML\Libros.xml");
            //el @ permite que las barras sean barras y no caracteres especiales
            //hay una funcion que lee el directorio raiz del xmls
            dv = ds.Tables[0].DefaultView; //al dataview se le asigna la unica DataSet que tengo
        
            return dv;
        }
    }
}