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
    public abstract class SeccionAccessor : AccessorBase<SeccionAccessor>
    {
        public void Agregar(Seccion seccion) {
            SqlQuery<Seccion> query = new SqlQuery<Seccion>();
            query.Insert(seccion);
        }

        public void Editar(Seccion seccion)
        {
            SqlQuery<Seccion> query = new SqlQuery<Seccion>();
            query.Update(seccion);
        }

        [SqlQuery("Delete from Seccion where IdSeccion = @idSeccion")]
        public abstract void Eliminar(string @idSeccion);

        [SqlQuery("Select * From Seccion Order by Descripcion asc")]
        public abstract List<Seccion> Listar();

        [SqlQuery("Select * From Seccion Where IdSeccion = @idSeccion")]
        public abstract Seccion Obtener(string @idSeccion);

        public string GenerarCorrelativo()
        {
            string retono = "001";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdSeccion)), 0) + 1 + 100000  )), 3) FROM Seccion").ExecuteScalar());

            return retono;
        }
    }
}
