using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; //accede a las clases de sql server, para modelo conectado
using System.Data; //para modelo desconectado


namespace Datos
{
    public class Pais
    {

        //metodos

        public void Agregar(Entidades.Pais pais) //esto evita pasar los parametros
        {
            //variable string que representa la sentencia a ejecutar
            //esto es ADO en modo conectado

            string strSql = "INSERT INTO Paises(Nombre) VALUES (@Nombre)"; //@Nombre representa el valor del campo Nombre que se quiere insertar, evita la inyeccion de sql
            SqlConnection objConexion = new SqlConnection(Conexion.strConexion); //objeto de conexion
            
            // para ejecutar sentencias sql: clase SqlCommand
            SqlCommand objCommand = new SqlCommand(strSql, objConexion);

            //nombre y valor a los parametros
            objCommand.Parameters.AddWithValue("@Nombre", pais.Nombre);

            //abro conexion
            objConexion.Open();
            
            //ejecutar sentencia
            objCommand.ExecuteNonQuery(); //no devuelve resultado
            
            //cerrar conexion
            objConexion.Close();

        } 

        //modo desconectado, traer datos, devuelve un datatable(tabla en memoria)

        public DataTable traerTodos()
        {
            DataTable dt = new DataTable();
            string strSql = "Select * from paises";
            SqlDataAdapter da = new SqlDataAdapter(strSql, Conexion.strConexion); //puente entre los 2 modos
            da.Fill(dt); //fill es llenar, llena el datatable
            return dt;
        }
    }
}
