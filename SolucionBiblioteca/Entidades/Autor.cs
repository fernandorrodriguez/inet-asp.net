using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Autor
    {
        public int ID { get; set; }
        public string Apellido { get; set; } //string es una alias de la clase String
        public string Nombre { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public Pais Pais { get; set; } //representacion de la Fk, la relacion es entre clases
        public List<Libro> Libros { get; set; }
    }
}
