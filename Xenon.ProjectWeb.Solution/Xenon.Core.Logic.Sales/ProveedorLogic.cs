using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;


namespace Xenon.Core.Logic.Sales
{
    public class ProveedorLogic
    {
        #region Patrón Singleton
        private static volatile ProveedorLogic instance;
        private static object syncRoot = new object();

        private ProveedorLogic() { }

        public static ProveedorLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new ProveedorLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo Proveedor
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(Proveedor proveedor)
        {
            Accessor.Agregar(proveedor);
        }

        /// <summary>
        /// Modifica Proveedor
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(Proveedor proveedor)
        {
            Accessor.Editar(proveedor);
        }

        /// <summary>
        /// Elimina Proveedor
        /// </summary>
        /// <param name="codigo"></param>
        public void Eliminar(string codigo)
        {
            if (codigo != string.Empty)
            {
                Accessor.Eliminar(codigo);
            }
        }

        /// <summary>
        /// Devuelve Lista Proveedor
        /// </summary>
        /// <returns></returns>
        public List<Proveedor> Listar()
        {
            return Accessor.Listar();
        }

        /// <summary>
        /// Devuelve Lista de Items
        /// </summary>
        /// <returns></returns>
        public List<Item> ObtenerListItems()
        {
            var lista = Accessor.Listar();
            return lista.Select(x => new Item { 
                id = x.IdProveedor,
                text = x.RazonSocialNombres
            }).ToList();
        }


        /// <summary>
        /// Devuelve una Proveedor
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public Proveedor Obtener(string idProveedor)
        {
            return Accessor.Obtener(idProveedor);
        }


        /// <summary>
        /// Lista Filtro Proveedor
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<Proveedor> Buscar(string idProveedor, string descripcion)
        {
            return Accessor.Buscar(idProveedor, descripcion);
        }

        /// <summary>
        /// Devuelve código generado
        /// </summary>
        /// <returns></returns>
        public string GenerarCorrelativo()
        {
            return Accessor.GenerarCorrelativo();
        }



        #endregion
        #region Accessor
        private static ProveedorAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return ProveedorAccessor.CreateInstance(); }
        }
        #endregion
    }
}
