using BLToolkit.DataAccess;
using BLToolkit.Mapping;
using BLToolkit.Data;
using System;
namespace Xenon.Core.Entity.Sales
{
    [TableName("Usuario")]
    public class Usuario
    {
        [MapField("IdUsuario"), PrimaryKey]
        public string IdUsuario { get; set; }

        [MapField("ApellidoPaterno")]
        public string ApellidoPaterno { get; set; }

        [MapField("ApellidoMaterno")]
        public string ApellidoMaterno { get; set; }

        [MapField("Nombres")]
        public string Nombres { get; set; }

        [MapField("Direccion")]
        public string Direccion { get; set; }

        [MapField("IdSexo")]
        public int IdSexo { get; set; }

        [MapField("Ubigeo")]
        public string Ubigeo { get; set; }

        [MapField("DNI")]
        public string DNI { get; set; }

        [MapField("Estudio")]
        public string Estudio { get; set; }

        [MapField("IdEstadoCivil")]
        public int IdEstadoCivil { get; set; }

        [MapField("Celular")]
        public string Celular { get; set; }

        [MapField("Telefono")]
        public string Telefono { get; set; }

        [MapField("FechaNacimiento")]
        public DateTime? FechaNacimiento { get; set; }

        [MapField("FechaIngreso")]
        public DateTime FechaIngreso { get; set; }

        [MapField("Foto")]
        public string Foto { get; set; }

        [MapField("CambioConDespues")]
        public Nullable<bool> CambioConDespues { get; set; }

        [MapField("CambioContraseña")]
        public string CambioContraseña { get; set; }

        [MapField("Usuario")]
        public string Usuario1 { get; set; }

        [MapField("Contrasena")]
        public byte[] Contrasena { get; set; }

        [MapField("IdRol")]
        public string IdRol { get; set; }
    }
}
