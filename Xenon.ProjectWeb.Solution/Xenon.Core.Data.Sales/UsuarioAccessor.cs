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
    public abstract class UsuarioAccessor : AccessorBase<UsuarioAccessor>
    {
        public Usuario Obtener(string name)
        {
            using (var db = new DbManager())
            {
                return db.SetSpCommand("Sp_BuscarxCodigo", db.Parameter("@codigo", name)).ExecuteObject<Usuario>();
            }
        }

        public Usuario ValidarIngreso(string user, string contrasena)
        {
            using (var db = new DbManager())
            {
                return db.SetSpCommand("Sp_ValidarIngreso", 
                    db.Parameter("@user", user),
                    db.Parameter("@contrasena", contrasena)
                    ).ExecuteObject<Usuario>();
            }
        }


        //[SqlQuery("Select * from Usuario Where IdUsuario = @cod")]
        //public abstract Usuario Obtener(string @cod);
    }
}
