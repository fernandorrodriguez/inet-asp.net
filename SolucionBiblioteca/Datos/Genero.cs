using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Datos
{
    public class Genero
    {
        public void Agregar(Entidades.Genero genero)
        {
            string strSql = "INSERT INTO Generos(Nombre) VALUES (@Nombre)"; //@Nombre representa el valor del campo Nombre que se quiere insertar, evita la inyeccion de sql
            SqlConnection objConexion = new SqlConnection(Conexion.strConexion); //objeto de conexion

            // para ejecutar sentencias sql: clase SqlCommand
            SqlCommand objCommand = new SqlCommand(strSql, objConexion);

            //nombre y valor a los parametros
            objCommand.Parameters.AddWithValue("@Nombre", genero.Nombre);

            //abro conexion
            objConexion.Open();

            //ejecutar sentencia
            objCommand.ExecuteNonQuery(); //no devuelve resultado

            //cerrar conexion
            objConexion.Close();
        }
    }
}
