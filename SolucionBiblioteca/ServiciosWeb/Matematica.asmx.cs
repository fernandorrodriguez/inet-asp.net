using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServiciosWeb
{
    /// <summary>
    /// Descripción breve de Matematica
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Matematica : WebService
    {

        [WebMethod]public int operacion(string a, int b, int c)
        {
            int resultado = 0;
            switch (a)
            {
                case "Suma":
                    resultado =  b+c;
                    break;
                case "Resta":
                    resultado = b-c;
                    break;
                case "Multiplicacion":
                   resultado = b*c;
                    break;
            }

            return resultado;
        }
    }
}
