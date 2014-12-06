using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;


namespace Xenon.Core.Entity.Sales
{
    [TableName("Seccion")]
    public class Seccion
    {
        [MapField("IdSeccion"), PrimaryKey]
        public string IdSeccion { get; set; }

        [MapField("Seccion")]
        public string Seccion1 { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }
    }
}
