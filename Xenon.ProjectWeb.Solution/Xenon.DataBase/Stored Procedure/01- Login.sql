
Create procedure Sp_BuscarxCodigo(
	@codigo char(4)
)
as
	Select * from Usuario Where IdUsuario = @codigo
Go


Create Procedure Sp_ValidarIngreso(
	@user varchar(50),
	@contrasena Varchar(20)
)
AS 
	Select * From Usuario Where Usuario = @user and  PwdCompare(@contrasena, Contrasena) = 1
Go

Create Procedure Sp_Generar_Menu_Rol(
	@Id_Rol Char(3)
)
As
	Select m.IdMenu, m.NombreMenu, m.PadreId,m.Icono, m.Mensaje, m.Url From Menu m ,
	Rol_Menu rm Where m.IdMenu = rm.IdMenu and rm.IdRol = @Id_Rol
go


