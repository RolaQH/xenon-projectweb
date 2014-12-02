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
    public abstract class EstadoCivilAccessor : AccessorBase<EstadoCivilAccessor>
    {
        public void Agregar(EstadoCivil estadoCivil)
        {
            SqlQuery<EstadoCivil> qry = new SqlQuery<EstadoCivil>();
            qry.Insert(estadoCivil);

        }

        public void Editar(EstadoCivil estadoCivil)
        {
            SqlQuery<EstadoCivil> qry = new SqlQuery<EstadoCivil>();
            qry.Update(estadoCivil);
        }

        [SqlQuery("Delete From EstadoCivil Where IdEstadoCivil = @idEstadoCivil")]
        public abstract void Eliminar(string @idEstadoCivil);

        [SqlQuery("Select * From EstadoCivil Order By Descripcion Asc")]
        public abstract List<EstadoCivil> Listar();

        [SqlQuery("Select * From EstadoCivil Where IdEstadoCivil = @idEstadoCivil")]
        public abstract EstadoCivil Obtener(string @idEstadoCivil);

        [SqlQuery(@"select * from EstadoCivil 
                where ((IdEstadoCivil = @idEstadoCivil)  or @idEstadoCivil = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<EstadoCivil> Buscar(string @idEstadoCivil, string @descripcion);

    }
}
