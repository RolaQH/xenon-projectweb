using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Logic.Sales;
using System.Web.Script.Serialization;
using System.Web.Script.Services;

namespace Xenon.FronEnd.WebForm.Sales.Mantenimientos
{
    public partial class frmSintomas : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<Sintomas> ListarCallBack(string arg)
        {
            var obj = (Sintomas)new JavaScriptSerializer().Deserialize<Sintomas>(arg);
            Sintomas entidad = obj;
            var lista = SintomasLogic.GetInstance.Buscar(entidad.IdSintoma, entidad.Descripcion);
            return lista;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static Sintomas ObtienePorIdCallBack(string arg) {
            var obj = (Sintomas)new JavaScriptSerializer().Deserialize<Sintomas>(arg);
            var sintoma = SintomasLogic.GetInstance.Obtener(obj.IdSintoma);
            return sintoma;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GeneraIdCallback() {
            var cod = SintomasLogic.GetInstance.GenerarCorrelativo();
            return cod;
        }

        [WebMethod]
        [ScriptMethod]
        public static void InsertarCallBack(string arg) {
            Sintomas sintoma = (Sintomas)new JavaScriptSerializer().Deserialize<Sintomas>(arg);
            SintomasLogic.GetInstance.Agregar(sintoma);
        }

        [WebMethod]
        [ScriptMethod]
        public static void ModificarCallBack(string arg) {
            Sintomas sintoma = (Sintomas)new JavaScriptSerializer().Deserialize<Sintomas>(arg);
            SintomasLogic.GetInstance.Editar(sintoma);
        }

        [WebMethod]
        [ScriptMethod]
        public static void EliminarCallBack(string arg)
        {
            Sintomas sintoma = (Sintomas)new JavaScriptSerializer().Deserialize<Sintomas>(arg);
            SintomasLogic.GetInstance.Eliminar(sintoma.IdSintoma);
        }

    }
}