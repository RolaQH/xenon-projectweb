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

namespace Xenon.FronEnd.WebForm.Sales.ProcesoPedido
{
    public partial class frmPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod]
        public static List<BuscarProductoVentaResponse> BuscarProductoCallBack(string arg)
        {
            try
            {
                var producto = ProductosLogic.GetInstance.buscarProductoVenta(arg);
                return producto;
            }
            catch (Exception)
            {

                return null;
            }

        }
    }
}