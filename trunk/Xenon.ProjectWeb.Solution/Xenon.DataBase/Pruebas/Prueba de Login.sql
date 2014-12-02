--Select* From ubigeo

--Select * From Proveedor

--Insert into TipoPersona values('Natural')
--Insert into TipoPersona values('Juridica')

--Insert into Proveedor values('0001', 1, '96312484125','Los Farmacos', 'Juan Perez', '7-56-73', 'Av Los Maliciosos', '321-4562', '987-1234','926153566', '512545892', 'Maliciosos@Gmail.com', 'http://www.maliciosos.com.pe',0)


--Select a.IdUbigeo, a.Descripcion,a.IdUbigeoRecu, b.Descripcion, a.Estado From Ubigeo a, TipoUBigeo b
--Where a.IdTipo = b.IdTipo and a.idUbigeo = 7
--7--Departamento
--56--Provincia
--73--Distrito


--Select * From Menu

--Insert into Menu values('Maestros', 1,'fa fa-list-alt', 'Gestion de Maestros', '')
--Insert into Menu values('sintomas', 1,'', '', 'Paginas/Mantenimientos/frmTable.aspx')
--Insert into Menu values('Proveedor', 1,'', '', 'Paginas/Mantenimientos/frmProveedor.aspx')


--Insert into Sexo values('Hombre', 0)
--Insert into Sexo values('Mujer', 0)

--Insert into EstadoCivil values('Soltero')
--Insert into EstadoCivil values('Casado')

--Insert into Rol values('001','Adm. General', 0)

--Select * from Usuario

--Insert into Rol_Menu values(1,'001')
--Insert into Rol_Menu values(2,'001')
--Insert into Rol_Menu values(3,'001')

--Insert into Usuario values('0001', 'Quispe', 'Huarcaya', 'Rola', 'Manchay', 1,'7-56-73', '45213547', 'Estudiante Instituto', 1, '952054337', null, null,GETDATE(), 'Images/Usuarios/rola.jpg',null, null, 'RolaQH',PwdEncrypt('92615356'), '001')