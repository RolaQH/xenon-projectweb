using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("Sintomas")]
    public class Sintomas
    {
        [MapField("IdSintoma"), PrimaryKey]
        public string IdSintoma { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("Estado")]
        public string Estado { get; set; }
    }
}
