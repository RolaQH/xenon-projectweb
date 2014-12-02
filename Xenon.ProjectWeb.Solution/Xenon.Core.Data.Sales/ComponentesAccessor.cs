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
    public abstract class ComponentesAccessor : AccessorBase<ComponentesAccessor>
    {

        public void Agregar(Componentes sintoma)
        {
            SqlQuery<Componentes> query = new SqlQuery<Componentes>();
            query.Insert(sintoma);
        }

        public void Editar(Componentes sintoma)
        {
            SqlQuery<Componentes> query = new SqlQuery<Componentes>();
            query.Update(sintoma);
        }

        [SqlQuery("Delete From Componentes Where IdComponente = @idComponente")]
        public abstract void Eliminar(string @idComponente);

        [SqlQuery("Select * From Componentes Order By Descripcion Asc")]
        public abstract List<Componentes> Listar();

        [SqlQuery("Select * From Componentes Where IdComponente = @idComponente")]
        public abstract Componentes Obtener(string @idComponente);

        [SqlQuery(@"select * from Componentes 
                where ((IdComponente = @idComponente)  or @idComponente = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<Componentes> Buscar(string @idComponente, string @descripcion);

        public string GenerarCorrelativo()
        {
            string retono = "0001";
            var dm = this.CreateDbManager();

            retono = Convert.ToString(dm.SetCommand(@"SELECT RIGHT(LTRIM(STR(ISNULL(MAX(CONVERT(INT, IdComponente)), 0) + 1 + 100000  )), 4) FROM Componentes").ExecuteScalar());

            return retono;
        }
    }
}
