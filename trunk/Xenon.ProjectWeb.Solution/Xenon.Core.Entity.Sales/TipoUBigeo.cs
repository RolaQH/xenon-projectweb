using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("TipoUBigeo")]
    public class TipoUBigeo
    {
        [MapField("IdTipo"), PrimaryKey]
        public int IdTipo { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
