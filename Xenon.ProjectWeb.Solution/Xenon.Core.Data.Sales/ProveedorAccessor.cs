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
    public abstract class ProveedorAccessor : AccessorBase<ProveedorAccessor>
    {
        public void Agregar(Proveedor proveedor)
        {
            SqlQuery<Proveedor> qry = new SqlQuery<Proveedor>();
            qry.Insert(proveedor);

        }

        public void Editar(Proveedor proveedor)
        {
            SqlQuery<Proveedor> qry = new SqlQuery<Proveedor>();
            qry.Update(proveedor);
        }

        [SqlQuery("Delete From Proveedor Where IdProveedor = @idProveedor")]
        public abstract void Eliminar(string @idProveedor);

        [SqlQuery("Select * From Proveedor Order By RazonSocialNombres Asc")]
        public abstract List<Proveedor> Listar();

        [SqlQuery("Select * From Proveedor Where IdProveedor = @idProveedor")]
        public abstract Proveedor Obtener(string @idProveedor);

        [SqlQuery(@"select * from Proveedor 
                where ((IdProveedor = @idProveedor)  or @idProveedor = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<Proveedor> Buscar(string @idProveedor, string @descripcion);

        public string GenerarCorrelativo()
        {
            string retono = "0001";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdProveedor)), 0) + 1 + 100000  )), 4) FROM Proveedor").ExecuteScalar());

            return retono;
        }
    }
}
