using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class UsuarioLogic
    {
        #region Patrón Singleton
        private static volatile UsuarioLogic instance;
        private static object syncRoot = new object();

        private UsuarioLogic() { }

        public static UsuarioLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new UsuarioLogic();
                    }
                }
                return instance;
            }
        }
        #endregion

        #region Metodos
        /// <summary>
        /// Obtiene un Usuario
        /// </summary>
        /// <param name="cod"></param>
        /// <returns></returns>
        public Usuario Obtener(string cod) {
            return Accessor.Obtener(cod);
        }

        /// <summary>
        /// Valida Ingreso al Sistema
        /// </summary>
        /// <param name="user"></param>
        /// <param name="contrasena"></param>
        /// <returns></returns>
        public Usuario ValidarIngreso(string user, string contrasena)
        {
            return Accessor.ValidarIngreso(user, contrasena);
        }

        #endregion

        #region Accessor
        private static UsuarioAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return UsuarioAccessor.CreateInstance(); }
        }
        #endregion
    }
}
