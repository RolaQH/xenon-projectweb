using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("ProductoVenta")]
    public class BuscarProductoVentaResponse
    {
        [MapField("IdProducto")]
        public string IdProducto { get; set; }

        [MapField("Producto")]
        public string Producto { get; set; }

        [MapField("Descripcion")]
        public string Descripcion { get; set; }

        [MapField("LaboratorioMarca")]
        public string LaboratorioMarca { get; set; }

        [MapField("TipoFarmaceutico")]
        public string TipoFarmaceutico { get; set; }

        [MapField("PrecioVenta")]
        public Nullable<float> PrecioVenta { get; set; }

        [MapField("PrecioVentaUnidad")]
        public Nullable<float> PrecioVentaUnidad { get; set; }

        [MapField("Cantidad")]
        public Nullable<decimal> Cantidad { get; set; }
    }
}
