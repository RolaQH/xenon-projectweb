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
    public abstract class TipoPersonaAccessor : AccessorBase<TipoPersonaAccessor>
    {

        [SqlQuery("Select * From TipoPersona")]
        public abstract List<TipoPersona> Listar();
    }
}
