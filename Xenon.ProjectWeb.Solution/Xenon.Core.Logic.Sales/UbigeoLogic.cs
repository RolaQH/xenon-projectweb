using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class UbigeoLogic
    {
         #region Patrón Singleton
        private static volatile UbigeoLogic instance;
        private static object syncRoot = new object();

        private UbigeoLogic() { }

        public static UbigeoLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new UbigeoLogic();
                    }
                }
                return instance;
            }
        }
        #endregion
        #region Metodos

        /// <summary>
        /// Agrega Nuevo Ubigeo
        /// </summary>
        /// <param name="sintomas"></param>
        public void Agregar(Ubigeo ubigeo)
        {
            Accessor.Agregar(ubigeo);
        }

        /// <summary>
        /// Modifica Ubigeo
        /// </summary>
        /// <param name="sintomas"></param>
        public void Editar(Ubigeo ubigeo)
        {
            Accessor.Editar(ubigeo);
        }

        /// <summary>
        /// Elimina Ubigeo
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
        /// Devuelve Lista Pais
        /// </summary>
        /// <returns></returns>
        public List<Item> ObtenerPais(string idUbigeo)
        {
            var lista = Accessor.ObtenerPais(idUbigeo);
            if (lista != null)
            {
                return lista.Select(x => new Item
                {
                    id = x.IdUbigeo.ToString(),
                    text = x.Descripcion
                }).ToList();
            }
            return null;
        }

        /// <summary>
        /// Devuelve Lista Departamento
        /// </summary>
        /// <param name="idUbigeoRecu"></param>
        /// <returns></returns>
        public List<Item> ObtenerDepartamento(string idUbigeoRecu)
        {
            var lista =  Accessor.ObtenerDepartamento(idUbigeoRecu);
            if (lista != null)
            {
                return lista.Select(x => new Item { 
                    id= x.IdUbigeo.ToString(),
                    text = x.Descripcion
                }).ToList();
            }
            return null;
        }

        /// <summary>
        /// Devuelve Lista Provincia
        /// </summary>
        /// <param name="idUbigeoRecu"></param>
        /// <returns></returns>
        public List<Item> ObtenerProvincia(string idUbigeoRecu) {
            var lista = Accessor.ObtenerProvincia(idUbigeoRecu);
            if (lista != null)
            {
                return lista.Select(x => new Item
                {
                    id = x.IdUbigeo.ToString(),
                    text = x.Descripcion
                }).ToList();
            }
            return null;
        }

        /// <summary>
        /// Devuelve Lista Distrito
        /// </summary>
        /// <param name="idUbigeoRecu"></param>
        /// <returns></returns>
        public List<Item> ObtenerDistrito(string idUbigeoRecu) 
        {
            var lista = Accessor.ObtenerDistrito(idUbigeoRecu);
            if (lista != null)
            {
                return lista.Select(x => new Item
                {
                    id = x.IdUbigeo.ToString(),
                    text = x.Descripcion
                }).ToList();
            }
            return null;
        }

        /// <summary>
        /// Devuelve Lista Ubigeo
        /// </summary>
        /// <returns></returns>
        public List<Ubigeo> Listar()
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
                id = x.IdUbigeo.ToString(),
                text = x.Descripcion
            }).ToList();
        }


        /// <summary>
        /// Devuelve una Ubigeo
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <returns></returns>
        public Ubigeo Obtener(string idUbigeo)
        {
            return Accessor.Obtener(idUbigeo);
        }


        /// <summary>
        /// Lista Filtro Ubigeo
        /// </summary>
        /// <param name="idSintoma"></param>
        /// <param name="descripcion"></param>
        /// <returns></returns>
        public List<Ubigeo> Buscar(string idUbigeo, string descripcion)
        {
            return Accessor.Buscar(idUbigeo, descripcion);
        }



        #endregion
        #region Accessor
        private static UbigeoAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return UbigeoAccessor.CreateInstance(); }
        }
        #endregion
    }
}
