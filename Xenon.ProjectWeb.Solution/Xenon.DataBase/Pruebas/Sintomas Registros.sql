--Select * From Sintomas

--Insert Into [Mi_DBA_1].[dbo].[@CONVERSION] (CAMPO1,CAMPO2,CAMPO3)
--select CAMPO1,CAMPO2,CAMPO3 from [MiDBA_2].[dbo].[@CONVERSION] 

--Select * From BDFarmacia.dbo.Signos_Sintomas

--Insert into BDBoticService.dbo.Sintomas(IdSintoma, Descripcion, Estado) 
--Select idsignos, Descripcion, 0 From BDFarmacia.dbo.Signos_Sintomas

--Insert into Rol values('001','Adm. General', 0)
--Insert into Menu values('Maestros', 1, 'fa fa-th-list', 'Gestion Maestro', 'Paginas/Mantenimientos/frmTable.aspx')
--Insert into Rol_Menu values(1, '001')

--Insert into Usuario(IdUsuario, ApellidoPaterno,ApellidoMaterno, 
--Nombres, [Usuario], Contrasena, IdRol) values(
--	'0001', 'Quispe', 'Huarcaya', 'Rola', 'RolaQh', PwdEncrypt('92615356'),'001')
--Select *  From Usuario

--Select * From usuario Where PwdCompare('92615356', Contrasena) = 1