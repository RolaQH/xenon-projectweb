using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Data.Sales;

namespace Xenon.Core.Logic.Sales
{
    public class MenuLogic
    {
         #region Patrón Singleton
        private static volatile MenuLogic instance;
        private static object syncRoot = new object();

        private MenuLogic() { }

        public static MenuLogic GetInstance
        {

            get{
                if(instance == null){
                    lock(syncRoot){
                        if(instance == null)
                            instance = new MenuLogic();
                    }
                }
                return instance;
            }
        }
        #endregion

        #region Metodos
        public List<Menu> GeneraMenu(string idRol)
        {
            return Accessor.GeneraMenu(idRol);
        }
        
        #endregion

        #region Accessor
        private static MenuAccessor Accessor
        {
            [System.Diagnostics.DebuggerStepThrough]
            get { return MenuAccessor.CreateInstance(); }
        }
        #endregion
    }
}
