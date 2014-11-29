using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using Xenon.Base.DataAccess;
using Xenon.Core.Entity.Sales;

namespace Xenon.Core.Data.Sales
{
    public abstract class MenuAccessor : AccessorBase<MenuAccessor>
    {
        public List<Menu> GeneraMenu(string idRol)
        {
            using (var db = new DbManager())
            {
                return db.SetSpCommand("Sp_Generar_Menu_Rol",
                    db.Parameter("@Id_Rol", idRol)
                    ).ExecuteList<Menu>();
            }
        }
    }
}
