using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace ServiciosWeb
{
    /// <summary>
    /// Descripción breve de Biblioteca
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Biblioteca : System.Web.Services.WebService
    {

        [WebMethod]
        public int CantidadAutores(int idpais)
        {
            string strCadena = @"Server=.\SQLEXPRESS;Database=Biblioteca;Integrated Security=true";
            int intCanti = 0;
            string strSQL = "Select count(*) from autores where idPais=" + idpais;
            SqlConnection objConexion = new SqlConnection(strCadena);
            SqlCommand objCom = new SqlCommand(strSQL, objConexion);
            objConexion.Open();
            intCanti = (int)objCom.ExecuteScalar();
            objConexion.Close();
            return intCanti;

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public object GetAutoresJson()
        {
            List<Autor> listaAutores = new List<Autor>();
            string strCadena = @"Server=.\SQLEXPRESS;Database=Biblioteca;Integrated Security=true";
            string strSQL = "Select id,apellido,nombre from Autores";
            SqlDataAdapter daTraer = new SqlDataAdapter(strSQL, strCadena);
            DataTable dt = new DataTable();
            daTraer.Fill(dt);
            foreach (DataRow item in dt.Rows)
            {
                Autor a = new Autor();
                a.ID = (int)item["id"];
                a.Apellido = item["apellido"].ToString();
                a.Nombre = item["nombre"].ToString();
                listaAutores.Add(a);
            }

            var jsonSerialiser = new JavaScriptSerializer();
            var json = jsonSerialiser.Serialize(listaAutores);
            return json;
        }

    }
}
