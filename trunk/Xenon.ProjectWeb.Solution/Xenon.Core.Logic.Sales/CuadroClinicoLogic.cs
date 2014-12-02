using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class CuadroClinicoLogic
    {
         #region Patrón Singleton
        private static volatile CuadroClinicoLogic instance;
        private static object syncRoot = new object();

        private CuadroClinicoLogic() { }

        public static CuadroClinicoLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new CuadroClinicoLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo CuadroClinico
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(CuadroClinico cuadroClinico)
        {
            Accessor.Agregar(cuadroClinico);
        }

        /// <summary>
        /// Modifica CuadroClinico
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(CuadroClinico cuadroClinico)
        {
            Accessor.Editar(cuadroClinico);
        }

        /// <summary>
        /// Elimina CuadroClinico
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
        /// Devuelve Lista CuadroClinico
        /// </summary>
        /// <returns></returns>
        public List<CuadroClinico> Listar()
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
                id = x.IdCuadroClinico,
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una CuadroClinico
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public CuadroClinico Obtener(string idCuadroClinico)
        {
            return Accessor.Obtener(idCuadroClinico);
        }


        /// <summary>
        /// Lista Filtro CuadroClinico
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<CuadroClinico> Buscar(string idCuadroClinico, string descripcion)
        {
            return Accessor.Buscar(idCuadroClinico, descripcion);
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
        private static CuadroClinicoAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return CuadroClinicoAccessor.CreateInstance(); }
        }
        #endregion
    }
}
