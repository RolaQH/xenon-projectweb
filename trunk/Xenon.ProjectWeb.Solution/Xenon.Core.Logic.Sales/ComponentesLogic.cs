using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class ComponentesLogic
    {
        #region Patrón Singleton
        private static volatile ComponentesLogic instance;
        private static object syncRoot = new object();

        private ComponentesLogic() { }

        public static ComponentesLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new ComponentesLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo Componentes
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(Componentes componente)
        {
            Accessor.Agregar(componente);
        }

        /// <summary>
        /// Modifica Componentes
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(Componentes componente)
        {
            Accessor.Editar(componente);
        }

        /// <summary>
        /// Elimina Componentes
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
        /// Devuelve Lista Componentes
        /// </summary>
        /// <returns></returns>
        public List<Componentes> Listar()
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
                id = x.IdComponente,
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una Componentes
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public Componentes Obtener(string idComponente)
        {
            return Accessor.Obtener(idComponente);
        }


        /// <summary>
        /// Lista Filtro Componentes
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<Componentes> Buscar(string idComponente, string descripcion)
        {
            return Accessor.Buscar(idComponente, descripcion);
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
        private static ComponentesAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return ComponentesAccessor.CreateInstance(); }
        }
        #endregion
    }
}
