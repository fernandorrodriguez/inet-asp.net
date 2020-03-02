using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VistaConsola
{
    class Program
    {
        static void Main(string[] args)
        {
            /**
             * las bibliotecas de clases datos, logica y entidades generan dlls
             *      -->es la estructura del backend
             *      -->el frontend solo tiene acceso a logica y entidades, por medio de referencias
             *      -->logica tiene referencia a entidades y datos
             *      -->datos tiene referencia a entidades
             *      -->entidades a nadie
             *      -->las clases de las entidades solo tienen propiedades
             *      -->las relaciones de muchos a muchos se solucionan con listas genericas
             *      -->la capa de datos tiene metodos
             *      -->entre capas, se pasan objetos, entidades
             *      -->la capa de entidades comunica
             *      
             *     
             * el proyecto VistaConsola genera un ejecutable
             * 
             * ADO
             *  -->2 modelos de conexion
             *      -->conectado y desconectado
             *  -->stringConecction
             *      -->cadena de texto de conexion que conecta al servidor
             *
             */

            //Entidades.Pais objEntidadPais = new Entidades.Pais();
            //Logica.Pais objLogicaPais = new Logica.Pais();

            //objEntidadPais.Nombre = "Canada";
            //objLogicaPais.Agregar(objEntidadPais);

            //Console.WriteLine("Pais agregado!");

            Entidades.Genero objEntidadGenero = new Entidades.Genero();
            Logica.Genero objLogicaGenero = new Logica.Genero();

            objEntidadGenero.Nombre = "Ciencia ficcion";
            objLogicaGenero.Agregar(objEntidadGenero);

            Console.WriteLine("Genero agregado");

            Console.ReadKey();



        }
    }
}
