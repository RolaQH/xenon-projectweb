using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("Ubigeo")]
    public class Ubigeo
    {

        [MapField("IdUbigeo"), PrimaryKey]
        public int IdUbigeo { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("IdTipo")]
        public Nullable<int> IdTipo { get; set; }

        [MapField("IdUbigeoRecu")]
        public Nullable<int> IdUbigeoRecu { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
