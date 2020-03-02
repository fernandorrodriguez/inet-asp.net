using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Pais
    {
        //propiedades autoimplementadas
        public int ID { get; set; }
        public string Nombre { get; set; }
        public List<Autor> Autores { get; set; } //coleccion generica de autores
    }
}
