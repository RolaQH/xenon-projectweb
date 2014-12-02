using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("CuadroClinico")]
    public class CuadroClinico
    {
        [MapField("IdCuadroClinico"), PrimaryKey]
        public string IdCuadroClinico { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
