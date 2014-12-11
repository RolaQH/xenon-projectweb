using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using Xenon.Base.DataAccess;
using Xenon.Core.Entity.Sales;


namespace Xenon.Core.Data.Sales
{
    public abstract class ProductosAccessor : AccessorBase<ProductosAccessor>
    {
        [SqlQuery(@"Select Top 50 p.IdProducto, p.Producto, p.Descripcion,l.Descripcion as [LaboratorioMarca],
	tf.Descripcion as TipoFarmaceutico, s.PrecioVenta, PrecioVentaUnidad, Cantidad From Productos p Inner join Laboratorio l on
	p.IdLaboratorio = l.IdLaboratorio inner join Stock s on p.IdProducto = s.IdProducto inner join TipoFarmaceutico tf on
	p.IdTipoFarmaceutico = tf.IdTipoFarmaceutico 
	Where s.Cantidad > 0 and p.Producto like '%' + @buscar + '%' or p.Descripcion like '%' + @buscar + '%' 
	or p.IdProducto = @buscar or l.Descripcion = @buscar Order by p.Producto asc")]
        public abstract List<BuscarProductoVentaResponse> buscarProductoVenta(string @Buscar);
    }
}
