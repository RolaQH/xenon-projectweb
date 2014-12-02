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
    public abstract class UbigeoAccessor : AccessorBase<UbigeoAccessor>
    {
        public void Agregar(Ubigeo idUbigeo)
        {
            SqlQuery<Ubigeo> qry = new SqlQuery<Ubigeo>();
            qry.Insert(idUbigeo);

        }

        public void Editar(Ubigeo idUbigeo)
        {
            SqlQuery<Ubigeo> qry = new SqlQuery<Ubigeo>();
            qry.Update(idUbigeo);
        }

        [SqlQuery(@"Select * From Ubigeo 
                    where IdTipo = 0 and (IdUbigeo = @idUbigeo or @idUbigeo = ' ')")]
        public abstract List<Ubigeo> ObtenerPais(string @idUbigeo);

        [SqlQuery(@"Select * From Ubigeo 
            where IdTipo = 1  and IdUbigeoRecu = @idUbigeoRecu")]
        public abstract List<Ubigeo> ObtenerDepartamento(string @idUbigeoRecu);

        [SqlQuery(@"Select * From Ubigeo 
            where IdTipo = 2  and IdUbigeoRecu = @idUbigeoRecu")]
        public abstract List<Ubigeo> ObtenerProvincia(string @idUbigeoRecu);
        [SqlQuery(@"Select * From Ubigeo 
            where IdTipo = 3  and IdUbigeoRecu = @idUbigeoRecu")]
        public abstract List<Ubigeo> ObtenerDistrito(string @idUbigeoRecu);

        [SqlQuery("Delete From Ubigeo Where IdUbigeo = @idUbigeo")]
        public abstract void Eliminar(string @idUbigeo);

        [SqlQuery("Select * From Ubigeo Order By Descripcion Asc")]
        public abstract List<Ubigeo> Listar();

        [SqlQuery("Select * From Ubigeo Where IdUbigeo = @idUbigeo")]
        public abstract Ubigeo Obtener(string @idUbigeo);

        [SqlQuery(@"select * from Ubigeo 
                where ((IdUbigeo = @idUbigeo)  or @idUbigeo = '')
                and Descripcion like '%' + @descripcion + '%'
                order by Descripcion asc")]
        public abstract List<Ubigeo> Buscar(string @idUbigeo, string @descripcion);

    }
}
