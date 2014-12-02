using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("Farmacos")]
    public class Farmacos
    {
        [MapField("IdFarmaco"), PrimaryKey]
        public string IdFarmaco { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
