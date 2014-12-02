using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;

namespace Xenon.Core.Entity.Sales
{
    [TableName("Proveedor")]
    public class Proveedor
    {
        [MapField("IdProveedor") , PrimaryKey]
        public string IdProveedor { get; set; }

        [MapField("IdTipo")]
        public Nullable<int> IdTipo { get; set; }

        [MapField("Documento")]
        public string Documento { get; set; }

        [MapField("RazonSocialNombres")]
        public string RazonSocialNombres { get; set; }

        [MapField("ContactoProveedor")]
        public string ContactoProveedor { get; set; }

        [MapField("Ubigeo")]
        public string Ubigeo { get; set; }

        [MapField("Direccion")]
        public string Direccion { get; set; }

        [MapField("Telefono")]
        public string Telefono { get; set; }

        [MapField("TelefonoContacto")]
        public string TelefonoContacto { get; set; }

        [MapField("Movil")]
        public string Movil { get; set; }

        [MapField("Fax")]
        public string Fax { get; set; }

        [MapField("Email")]
        public string Email { get; set; }

        [MapField("PaginaWeb")]
        public string PaginaWeb { get; set; }

        [MapField("Estado")]
        public Nullable<bool> Estado { get; set; }


    }
}
