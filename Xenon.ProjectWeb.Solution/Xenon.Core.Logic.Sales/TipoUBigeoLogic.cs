using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;


namespace Xenon.Core.Logic.Sales
{
    public class TipoUBigeoLogic
    {
         #region Patrón Singleton
        private static volatile TipoUBigeoLogic instance;
        private static object syncRoot = new object();

        private TipoUBigeoLogic() { }

        public static TipoUBigeoLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new TipoUBigeoLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo TipoUBigeo
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(TipoUBigeo tipoUBigeo)
        {
            Accessor.Agregar(tipoUBigeo);
        }

        /// <summary>
        /// Modifica TipoUBigeo
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(TipoUBigeo tipoUBigeo)
        {
            Accessor.Editar(tipoUBigeo);
        }

        /// <summary>
        /// Elimina TipoUBigeo
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
        /// Devuelve Lista TipoUBigeo
        /// </summary>
        /// <returns></returns>
        public List<TipoUBigeo> Listar()
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
                id = x.IdTipo.ToString(),
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una TipoUBigeo
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public TipoUBigeo Obtener(string idTipoUBigeo)
        {
            return Accessor.Obtener(idTipoUBigeo);
        }


        /// <summary>
        /// Lista Filtro TipoUBigeo
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<TipoUBigeo> Buscar(string idTipoUBigeo, string descripcion)
        {
            return Accessor.Buscar(idTipoUBigeo, descripcion);
        }




        #endregion
        #region Accessor
        private static TipoUBigeoAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return TipoUBigeoAccessor.CreateInstance(); }
        }
        #endregion
    }
}
