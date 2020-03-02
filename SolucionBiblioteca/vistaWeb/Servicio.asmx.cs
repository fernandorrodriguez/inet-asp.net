using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace vistaWeb
{
    /// <summary>
    /// Descripción breve de Servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class Servicio : System.Web.Services.WebService //los web services son clases que heredan de web services
    {
        //[WebMethod] esto significa que lo puedo ejecutar desde el navegador en http que devuelve lo que hace el metodo en xml
        //esto permite que el servicio se pueda invocar desde cualquier tecnologia
        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todes";
        }

        [WebMethod]
        public string[] ObtenerAutores(string prefixText, int count)
        {
            string strCon = @"Server=.\SQLEXPRESS;Database=Biblioteca;Integrated Security=true";
            string strSQL = "Select Convert(varchar, id) + '-' + Apellido as Apellido from Autores where Apellido  LIKE '' + @letras + '%' ";
            SqlConnection objConexion = new SqlConnection(strCon);
            SqlCommand comBuscar = new SqlCommand(strSQL, objConexion);
            comBuscar.Parameters.AddWithValue("@letras", prefixText);
            SqlDataReader dr;
            List<string> lista = new List<string>();
            objConexion.Open();
            dr = comBuscar.ExecuteReader();
            while (dr.Read())
            {
                lista.Add(dr["Apellido"].ToString());

            }
            objConexion.Close();
            return lista.ToArray();

        }

    }
}
