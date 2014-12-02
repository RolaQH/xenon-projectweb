using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;


namespace Xenon.Core.Entity.Sales
{
    [TableName("EstadoFarmaco")]
    public class EstadoFarmaco
    {
        [MapField("IdEstadoFarmaco"), PrimaryKey]
        public string IdEstadoFarmaco { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
