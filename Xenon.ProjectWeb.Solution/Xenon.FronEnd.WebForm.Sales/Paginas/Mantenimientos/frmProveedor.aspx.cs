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
    public partial class frmProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static List<Item> ObtenerPais(string arg)
        {
            try
            {
                var lista = UbigeoLogic.GetInstance.ObtenerPais(arg);
                return lista;
            }
            catch (Exception)
            {

                return null;
            }
        }

        [WebMethod]
        public static List<Item> ObtenerDepartamento(string arg)
        {
            try
            {
                var lista = UbigeoLogic.GetInstance.ObtenerDepartamento(arg);
                return lista;
            }
            catch (Exception)
            {

                return null;
            }
        }

        [WebMethod]
        public static List<Item> ObtenerProvincia(string arg)
        {
            try
            {
                var lista = UbigeoLogic.GetInstance.ObtenerProvincia(arg);
                return lista;
            }
            catch (Exception)
            {

                return null;
            }
        }

        [WebMethod]
        public static List<Item> ObtenerDistrito(string arg)
        {
            try
            {
                var lista = UbigeoLogic.GetInstance.ObtenerDistrito(arg);
                return lista;
            }
            catch (Exception)
            {

                return null;
            }
        }


        [WebMethod]
        public static string ListarCallBack()
        {

            var lista = ProveedorLogic.GetInstance.Listar();
            return Json.JsonSerializer.ToJson(new
            {
                data = lista
            });
        }

        [WebMethod]
        public static string ListarTipoPersonaCallBack()
        {

            var lista = TipoPersonaLogic.GetInstance.ObtenerListItems();
            return Json.JsonSerializer.ToJson(new
            {
                data = lista
            });
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static Proveedor ObtienePorIdCallBack(string arg)
        {
            var proveedor = ProveedorLogic.GetInstance.Obtener(arg);
            return proveedor;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GeneraIdCallback()
        {
            var cod = ProveedorLogic.GetInstance.GenerarCorrelativo();
            return cod;
        }

        [WebMethod]
        [ScriptMethod]
        public static void InsertarCallBack(string arg)
        {
            Proveedor proveedor = (Proveedor)new JavaScriptSerializer().Deserialize<Proveedor>(arg);
            ProveedorLogic.GetInstance.Agregar(proveedor);
        }

        [WebMethod]
        [ScriptMethod]
        public static void ModificarCallBack(string arg)
        {
            Proveedor proveedor = (Proveedor)new JavaScriptSerializer().Deserialize<Proveedor>(arg);
            ProveedorLogic.GetInstance.Editar(proveedor);
        }

        [WebMethod]
        [ScriptMethod]
        public static void EliminarCallBack(string arg)
        {
            Proveedor proveedor = (Proveedor)new JavaScriptSerializer().Deserialize<Proveedor>(arg);
            ProveedorLogic.GetInstance.Eliminar(proveedor.IdProveedor);
        }

    }
}