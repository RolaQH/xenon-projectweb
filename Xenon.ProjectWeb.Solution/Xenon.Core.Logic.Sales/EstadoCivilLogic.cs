using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class EstadoCivilLogic
    {
        #region Patrón Singleton
        private static volatile EstadoCivilLogic instance;
        private static object syncRoot = new object();

        private EstadoCivilLogic() { }

        public static EstadoCivilLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new EstadoCivilLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo EstadoCivil
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(EstadoCivil estadoCivil)
        {
            Accessor.Agregar(estadoCivil);
        }

        /// <summary>
        /// Modifica EstadoCivil
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(EstadoCivil estadoCivil)
        {
            Accessor.Editar(estadoCivil);
        }

        /// <summary>
        /// Elimina EstadoCivil
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
        /// Devuelve Lista EstadoCivil
        /// </summary>
        /// <returns></returns>
        public List<EstadoCivil> Listar()
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
                id = x.IdEstadoCivil.ToString(),
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una EstadoCivil
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public EstadoCivil Obtener(string idEstadoCivil)
        {
            return Accessor.Obtener(idEstadoCivil);
        }


        /// <summary>
        /// Lista Filtro EstadoCivil
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<EstadoCivil> Buscar(string idEstadoCivil, string descripcion)
        {
            return Accessor.Buscar(idEstadoCivil, descripcion);
        }


        #endregion
        #region Accessor
        private static EstadoCivilAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return EstadoCivilAccessor.CreateInstance(); }
        }
        #endregion
    }
}
