using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;
namespace Xenon.Core.Entity.Sales
{
    [TableName("TipoPersona")]
    public class TipoPersona
    {
        [MapField("IdTipo"), PrimaryKey]
        public int IdTipo { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }
    }
}
