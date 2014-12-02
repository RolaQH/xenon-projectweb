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
    public abstract class TipoUBigeoAccessor : AccessorBase<TipoUBigeoAccessor>
    {
        public void Agregar(TipoUBigeo idTipo)
        {
            SqlQuery<TipoUBigeo> qry = new SqlQuery<TipoUBigeo>();
            qry.Insert(idTipo);

        }

        public void Editar(TipoUBigeo idTipo)
        {
            SqlQuery<TipoUBigeo> qry = new SqlQuery<TipoUBigeo>();
            qry.Update(idTipo);
        }

        [SqlQuery("Delete From TipoUBigeo Where IdTipo = @idTipo")]
        public abstract void Eliminar(string @idTipo);

        [SqlQuery("Select * From TipoUBigeo Order By Descripcion Asc")]
        public abstract List<TipoUBigeo> Listar();

        [SqlQuery("Select * From Sintomas Where IdTipo = @idTipo")]
        public abstract TipoUBigeo Obtener(string @idTipo);

        [SqlQuery(@"select * from TipoUBigeo 
                where ((IdTipo = @idTipo)  or @idTipo = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<TipoUBigeo> Buscar(string @idTipo, string @descripcion);

    }
}
