using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("Menu")]
    public class Menu
    {
        [MapField("IdMenu"), PrimaryKey]
        public int IdMenu { get; set; }

        [MapField("NombreMenu")]
        public string NombreMenu { get; set; }

        [MapField("PadreId")]
        public Nullable<int> PadreId { get; set; }

        [MapField("Icono")]
        public string Icono { get; set; }

        [MapField("Mensaje")]
        public string Mensaje { get; set; }

        [MapField("Url")]
        public string Url { get; set; }
    }
}
