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
    public abstract class EstadoFarmacoAccessor : AccessorBase<EstadoFarmacoAccessor>
    {
        public void Agregar(EstadoFarmaco estadoFarmaco)
        {
            SqlQuery<EstadoFarmaco> qry = new SqlQuery<EstadoFarmaco>();
            qry.Insert(estadoFarmaco);

        }

        public void Editar(EstadoFarmaco estadoFarmaco)
        {
            SqlQuery<EstadoFarmaco> qry = new SqlQuery<EstadoFarmaco>();
            qry.Update(estadoFarmaco);
        }

        [SqlQuery("Delete From EstadoFarmaco Where IdEstadoFarmaco = @idEstadoFarmaco")]
        public abstract void Eliminar(string @idEstadoFarmaco);

        [SqlQuery("Select * From EstadoFarmaco Order By Descripcion Asc")]
        public abstract List<EstadoFarmaco> Listar();

        [SqlQuery("Select * From EstadoFarmaco Where IdEstadoFarmaco = @idEstadoFarmaco")]
        public abstract EstadoFarmaco Obtener(string @idEstadoFarmaco);

        [SqlQuery(@"select * from EstadoFarmaco 
                where ((IdEstadoFarmaco = @idEstadoFarmaco)  or @idEstadoFarmaco = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<EstadoFarmaco> Buscar(string @idEstadoFarmaco, string @descripcion);

        public string GenerarCorrelativo()
        {
            string retono = "01";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdEstadoFarmaco)), 0) + 1 + 100000  )), 2) FROM EstadoFarmaco").ExecuteScalar());

            return retono;
        }
    }
}
