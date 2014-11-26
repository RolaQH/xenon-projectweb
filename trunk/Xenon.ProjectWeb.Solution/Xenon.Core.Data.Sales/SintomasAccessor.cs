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
    public abstract class SintomasAccessor : AccessorBase<SintomasAccessor>
    {
        public void Agregar(Sintomas sintomas) {
            SqlQuery<Sintomas> qry = new SqlQuery<Sintomas>();
            qry.Insert(sintomas);
        }

        public void Editar(Sintomas sintomas) {
            SqlQuery<Sintomas> qry = new SqlQuery<Sintomas>();
            qry.Update(sintomas);
        }

        [SqlQuery("Delete From Sintomas Where IdSintoma = @idSintoma")]
        public abstract void Eliminar(string @idSintoma);

        [SqlQuery("Select * From Sintomas Order By Descripcion Asc")]
        public abstract List<Sintomas> Listar();

        [SqlQuery("Select * From Sintomas Where IdSintoma = @idSintoma")]
        public abstract Sintomas Obtener(string @idSintoma);

        [SqlQuery(@"select * from Sintomas 
                where ((IdSintoma = @idSintoma)  or @idSintoma = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<Sintomas> Buscar(string @idSintoma, string @descripcion);

        public string GenerarCorrelativo()
        {
            string retono = "0001";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdSintoma)), 0) + 1 + 100000  )), 4) FROM Sintomas where IdSintoma <> '99'").ExecuteScalar());

            return retono;
        }
    }
}
