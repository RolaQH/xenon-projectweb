using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class SeccionLogic
    {
        #region Patrón Singleton
        private static volatile SeccionLogic instance;
        private static object syncRoot = new object();

        private SeccionLogic() { }

        public static SeccionLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new SeccionLogic();
                    }
                }
                return instance;
            }
        }
        #endregion


        #region MEtodos
        public void Agregar(Seccion seccion)
        {
            Accessor.Agregar(seccion);
        }

        public void Editar(Seccion seccion)
        {
            Accessor.Editar(seccion);
        }

        public void Eliminar(string idSeccion) {
            Accessor.Eliminar(idSeccion);
        }

        public List<Seccion> Listar() {
            return Accessor.Listar();
        }

        public Seccion Obtener(string idSeccion) {
            return Accessor.Obtener(idSeccion);
        }

        public string GenerarCorrelativo()
        {
            return Accessor.GenerarCorrelativo();
        }
        #endregion

        #region Accessor
        private static SeccionAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return SeccionAccessor.CreateInstance(); }
        }
        #endregion
    }
}
