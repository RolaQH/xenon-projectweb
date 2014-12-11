using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class ProductosLogic
    {
         #region Patrón Singleton
        private static volatile ProductosLogic instance;
        private static object syncRoot = new object();

        private ProductosLogic() { }

        public static ProductosLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new ProductosLogic();
                    }
                }
                return instance;
            }
        }
        #endregion


        public List<BuscarProductoVentaResponse> buscarProductoVenta( string buscar) {
            return Accessor.buscarProductoVenta(buscar);
        }

         #region Accessor
        private static ProductosAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return ProductosAccessor.CreateInstance(); }
        }
        #endregion
    }
}
