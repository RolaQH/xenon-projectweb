using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("EstadoCivil")]
    public class EstadoCivil
    {
        [MapField("IdEstadoCivil"), PrimaryKey]
        public int IdEstadoCivil { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }
    }
}
