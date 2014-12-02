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
    public abstract class FarmacosAccessor : AccessorBase<FarmacosAccessor>
    {
        public void Agregar(Farmacos farmacos)
        {
            SqlQuery<Farmacos> qry = new SqlQuery<Farmacos>();
            qry.Insert(farmacos);

        }

        public void Editar(Farmacos farmacos)
        {
            SqlQuery<Farmacos> qry = new SqlQuery<Farmacos>();
            qry.Update(farmacos);
        }

        [SqlQuery("Delete From Farmacos Where IdFarmaco = @idFarmaco")]
        public abstract void Eliminar(string @idFarmaco);

        [SqlQuery("Select * From Farmacos Order By Descripcion Asc")]
        public abstract List<Farmacos> Listar();

        [SqlQuery("Select * From Farmacos Where IdFarmaco = @idFarmaco")]
        public abstract Farmacos Obtener(string @idFarmaco);

        [SqlQuery(@"select * from Farmacos 
                where ((IdFarmaco = @idFarmaco)  or @idFarmaco = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<Farmacos> Buscar(string @idFarmaco, string @descripcion);

        public string GenerarCorrelativo()
        {
            string retono = "0001";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdFarmaco)), 0) + 1 + 100000  )), 4) FROM Farmacos").ExecuteScalar());

            return retono;
        }
    }
}
