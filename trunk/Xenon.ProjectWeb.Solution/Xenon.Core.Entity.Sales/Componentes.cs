using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("Componentes")]
    public class Componentes
    {
        [MapField("IdComponente"), PrimaryKey]
        public string IdComponente { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
