using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Xenon.Core.Logic.Sales;
using Xenon.Core.Entity.Sales;

namespace Xenon.FronEnd.WebForm.Sales.Mantenimientos
{
    /// <summary>
    /// Descripción breve de wsSintomas
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class wsSintomas : PageBase
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }

        [WebMethod]
        public List<Sintomas> ListarCallBack(string arg)
        {

            try
            {
                Sintomas entidad = this.Deserialize<Sintomas>(arg);
                //var lista = AFPLogic.GetInstance.Listar();
                var lista = SintomasLogic.GetInstance.Buscar(entidad.IdSintoma, entidad.Descripcion);
                return lista;
                //return Json.JsonSerializer.ToJson(new
                //{
                //    data = lista,
                //    result = "OK",
                //    messahe = "OK"
                //});
            }
            catch (Exception ex)
            {
                //return Json.JsonSerializer.ToJson(new
                //{
                //    data = "",
                //    result = "ERROR",
                //    messahe = ex.Message
                //});
                return null;
            }
        }
    }
}
