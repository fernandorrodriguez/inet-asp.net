using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class Autor
    {
        public void agregar(Entidades.Autor autor)
        {
            string strProc = "procAltaAutor";
            SqlConnection objConexion = new SqlConnection(Conexion.strConexion);
            SqlCommand objCommand = new SqlCommand(strProc, objConexion);
            //obtengo los parametros del store procedure
            objCommand.CommandType = CommandType.StoredProcedure; //esto es para que interprete que el string es un stored procedure
            objCommand.Parameters.AddWithValue("@Apellido", autor.Apellido);
            objCommand.Parameters.AddWithValue("@Nombre", autor.Nombre);
            objCommand.Parameters.AddWithValue("@FechaNacimiento", autor.FechaNacimiento);
            objCommand.Parameters.AddWithValue("@IdPais", autor.Pais.ID);
            objConexion.Open();
            objCommand.ExecuteNonQuery();
            objConexion.Close();
        }

        public DataTable TraerTodos()
        {
                DataTable dt = new DataTable();
                string strSql = "Select * from VistaAutores";
                SqlDataAdapter da = new SqlDataAdapter(strSql, Conexion.strConexion); //puente entre los 2 modos
                da.Fill(dt); //fill es llenar, llena el datatable
                return dt;
           
        }

    }
}
