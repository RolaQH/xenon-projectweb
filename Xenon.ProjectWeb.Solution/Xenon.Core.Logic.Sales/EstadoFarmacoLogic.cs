using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;
namespace Xenon.Core.Logic.Sales
{
    public class EstadoFarmacoLogic
    {
         #region Patrón Singleton
        private static volatile EstadoFarmacoLogic instance;
        private static object syncRoot = new object();

        private EstadoFarmacoLogic() { }

        public static EstadoFarmacoLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new EstadoFarmacoLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo EstadoFarmaco
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(EstadoFarmaco estadoFarmaco)
        {
            Accessor.Agregar(estadoFarmaco);
        }

        /// <summary>
        /// Modifica EstadoFarmaco
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(EstadoFarmaco estadoFarmaco)
        {
            Accessor.Editar(estadoFarmaco);
        }

        /// <summary>
        /// Elimina EstadoFarmaco
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
        /// Devuelve Lista EstadoFarmaco
        /// </summary>
        /// <returns></returns>
        public List<EstadoFarmaco> Listar()
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
                id = x.IdEstadoFarmaco,
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una EstadoFarmaco
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public EstadoFarmaco Obtener(string idEstadoFarmaco)
        {
            return Accessor.Obtener(idEstadoFarmaco);
        }


        /// <summary>
        /// Lista Filtro EstadoFarmaco
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<EstadoFarmaco> Buscar(string idEstadoFarmaco, string descripcion)
        {
            return Accessor.Buscar(idEstadoFarmaco, descripcion);
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
        private static EstadoFarmacoAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return EstadoFarmacoAccessor.CreateInstance(); }
        }
        #endregion
    }
}
