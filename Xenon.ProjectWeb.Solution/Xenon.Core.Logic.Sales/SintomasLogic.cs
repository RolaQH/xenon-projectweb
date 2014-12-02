using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;


namespace Xenon.Core.Logic.Sales
{
    public class SintomasLogic
    {
        #region Patrón Singleton
        private static volatile SintomasLogic instance;
        private static object syncRoot = new object();

        private SintomasLogic() {}

        public static SintomasLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new SintomasLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo Sintoma
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(Sintomas sintomas)
        {
            Accessor.Agregar(sintomas);
        }

        /// <summary>
        /// Modifica Sintomas
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(Sintomas sintomas)
        {
            Accessor.Editar(sintomas);
        }

        /// <summary>
        /// Elimina Sintoma
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
        /// Devuelve Lista Sintomas
        /// </summary>
        /// <returns></returns>
        public List<Sintomas> Listar()
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
                id = x.IdSintoma,
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una Sintoma
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public Sintomas Obtener(string idSintoma) {
            return Accessor.Obtener(idSintoma);
        }


        /// <summary>
        /// Lista Filtro Sintomas
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<Sintomas> Buscar(string idSintoma, string descripcion)
        {
            return Accessor.Buscar(idSintoma, descripcion);
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
        private static SintomasAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return SintomasAccessor.CreateInstance(); }
        }
        #endregion
    }
}
