using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Logic.Sales;


namespace Xenon.FronEnd.WebForm.Sales.Paginas.Mantenimientos
{
    public partial class frmEstadoCivil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        [ScriptMethod]
        public static string ListarCallBack()
        {

            var estadoCivil = EstadoCivilLogic.GetInstance.Listar();
            try
            {
                return Json.JsonSerializer.ToJson(new
                {
                    data = estadoCivil
                });
            }
            catch (Exception ex)
            {

                return Json.JsonSerializer.ToJson(new
                {
                    data = "",
                    ERROR = ex.Message
                });
            }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static EstadoCivil ObtienePorIdCallBack(string arg)
        {
            var obj = (EstadoCivil)new JavaScriptSerializer().Deserialize<EstadoCivil>(arg);
            var estadoCivil = EstadoCivilLogic.GetInstance.Obtener(obj.IdEstadoCivil.ToString());
            return estadoCivil;
        }


        [WebMethod]
        [ScriptMethod]
        public static void InsertarCallBack(string arg)
        {
            EstadoCivil estadoCivil = (EstadoCivil)new JavaScriptSerializer().Deserialize<EstadoCivil>(arg);
            EstadoCivilLogic.GetInstance.Agregar(estadoCivil.Descripcion);
        }

        [WebMethod]
        [ScriptMethod]
        public static void ModificarCallBack(string arg)
        {
            EstadoCivil estadoCivil = (EstadoCivil)new JavaScriptSerializer().Deserialize<EstadoCivil>(arg);
            EstadoCivilLogic.GetInstance.Editar(estadoCivil);
        }

        [WebMethod]
        [ScriptMethod]
        public static void EliminarCallBack(string arg)
        {
            EstadoCivil estadoCivil = (EstadoCivil)new JavaScriptSerializer().Deserialize<EstadoCivil>(arg);
            EstadoCivilLogic.GetInstance.Eliminar(estadoCivil.IdEstadoCivil.ToString());
        }
    }
}