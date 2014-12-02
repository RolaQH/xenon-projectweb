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
    public abstract class CuadroClinicoAccessor : AccessorBase<CuadroClinicoAccessor>
    {
        public void Agregar(CuadroClinico cuadroClinico)
        {
            SqlQuery<CuadroClinico> qry = new SqlQuery<CuadroClinico>();
            qry.Insert(cuadroClinico);

        }

        public void Editar(CuadroClinico cuadroClinico)
        {
            SqlQuery<CuadroClinico> qry = new SqlQuery<CuadroClinico>();
            qry.Update(cuadroClinico);
        }

        [SqlQuery("Delete From CuadroClinico Where IdCuadroClinico = @idCuadroClinico")]
        public abstract void Eliminar(string @idCuadroClinico);

        [SqlQuery("Select * From CuadroClinico Order By Descripcion Asc")]
        public abstract List<CuadroClinico> Listar();

        [SqlQuery("Select * From CuadroClinico Where IdCuadroClinico = @idCuadroClinico")]
        public abstract CuadroClinico Obtener(string @idCuadroClinico);

        [SqlQuery(@"select * from CuadroClinico 
                where ((IdCuadroClinico = @idCuadroClinico)  or @idCuadroClinico = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<CuadroClinico> Buscar(string @idCuadroClinico, string @descripcion);

        public string GenerarCorrelativo()
        {
            string retono = "0001";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdCuadroClinico)), 0) + 1 + 100000  )), 4) FROM CuadroClinico").ExecuteScalar());

            return retono;
        }
    }
}
