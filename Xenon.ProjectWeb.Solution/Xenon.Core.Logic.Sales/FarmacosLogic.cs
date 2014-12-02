using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class FarmacosLogic
    {
        #region Patrón Singleton
        private static volatile FarmacosLogic instance;
        private static object syncRoot = new object();

        private FarmacosLogic() { }

        public static FarmacosLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new FarmacosLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo Farmacos
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(Farmacos farmacos)
        {
            Accessor.Agregar(farmacos);
        }

        /// <summary>
        /// Modifica Farmacos
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(Farmacos farmacos)
        {
            Accessor.Editar(farmacos);
        }

        /// <summary>
        /// Elimina Farmacos
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
        /// Devuelve Lista Farmacos
        /// </summary>
        /// <returns></returns>
        public List<Farmacos> Listar()
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
                id = x.IdFarmaco,
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una Farmacos
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public Farmacos Obtener(string idFarmaco)
        {
            return Accessor.Obtener(idFarmaco);
        }


        /// <summary>
        /// Lista Filtro Sintomas
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<Farmacos> Buscar(string idFarmaco, string descripcion)
        {
            return Accessor.Buscar(idFarmaco, descripcion);
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
        private static FarmacosAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return FarmacosAccessor.CreateInstance(); }
        }
        #endregion
    }
}
