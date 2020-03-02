using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class Genero
    {
        
        
        public void Agregar(Entidades.Genero genero)
        {
            Datos.Genero objDatos = new Datos.Genero();
            objDatos.Agregar(genero);
        }
    }
}
