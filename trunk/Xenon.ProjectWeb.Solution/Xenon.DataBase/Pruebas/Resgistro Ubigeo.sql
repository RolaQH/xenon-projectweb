--create table tm_ubigeo
--(
--    tm_idubigeo int identity(1,1) primary key not null,
--    tm_nomubigeo varchar(150),
--    tm_idubigeosup int,
--    tm_tipoubigeo varchar(2),
--    ta_idindest varchar(2)
--)
--go
 
 
--create table ta_valorcomun
--(
--    ta_idvalor int identity(1,1) primary key not null,
--    ta_idcampo varchar(50),
--    ta_idcodigo varchar(2),
--    ta_denomina varchar(50)
--)
--go

--



--Select a.IdUbigeo, a.Descripcion,a.IdUbigeoRecu, b.Descripcion, a.Estado From Ubigeo a, TipoUBigeo b
--Where a.IdTipo = b.IdTipo

--Select a.IdUbigeo, a.Descripcion,a.IdUbigeoRecu, b.Descripcion, a.Estado From Ubigeo a, TipoUBigeo b
--Where a.IdTipo = b.IdTipo and a.IdTipo = 1 and a.IdUbigeoRecu = 1


--insert into TipoUbigeo  values ('PAIS',0)
--insert into TipoUbigeo  values ('DEPARTAMENTO',0)
--insert into TipoUbigeo  values ('PROVINCIA',0)
--insert into TipoUbigeo  values ('DISTRITO',0)

--INSERT INTO Ubigeo  VALUES  ('PERÚ','0',0,'0')
--INSERT INTO Ubigeo  VALUES  ('TUMBES','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('PIURA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('LAMBAYEQUE','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('LA LIBERTAD','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('CAJAMARCA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('ANCASH','1',1,'0')
--INSERT INTO Ubigeo VALUES  ('AMAZONAS','1',1,'0')
--INSERT INTO Ubigeo VALUES  ('AREQUIPA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('CUSCO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('LORETO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('UCAYALI','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('ICA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('MOQUEGUA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('PASCO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('JUNIN','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('AYACUCHO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('APURIMAC','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('MADRE DE DIOS','01',1,'0')
--INSERT INTO Ubigeo  VALUES  ('PUNO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('TACNA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('LIMA','1',1,'00')
--INSERT INTO Ubigeo  VALUES  ('HUANUCO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('HUANCAVELICA','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('PROVINCIA CONSTITUCIONAL DEL CALLAO','1',1,'0')
--INSERT INTO Ubigeo  VALUES  ('CHICLAYO','2',4,'0')
--INSERT INTO Ubigeo  VALUES  ('LAMBAYEQUE','2',4,'0')
--INSERT INTO Ubigeo VALUES  ('FERREÑAFE','2',4,'0')
--INSERT INTO Ubigeo  VALUES  ('CHICLAYO','3',27,'0')
--INSERT INTO Ubigeo  VALUES  ('LA VICTORIA','3',27,'0')


--INSERT INTO Ubigeo VALUES  ('PIURA','2',3,'0')
--INSERT INTO Ubigeo  VALUES  ('PAITA','2',3,'0')
--INSERT INTO Ubigeo  VALUES  ('CACHAPOYAS','2',8,'0')
--INSERT INTO Ubigeo  VALUES  ('BAGUA','2',8,'0')
--INSERT INTO Ubigeo  VALUES  ('BONGARA','2',8,'0')
--INSERT INTO Ubigeo  VALUES  ('LUYA','2',8,'0')
--INSERT INTO Ubigeo VALUES  ('RODRIGUEZ DE MENDOZA','2',8,'0')
--INSERT INTO Ubigeo  VALUES  ('CONDORCANQUI','2',8,'0')
--INSERT INTO Ubigeo  VALUES  ('UTCUBAMBA','2',8,'0')
--INSERT INTO Ubigeo  VALUES  ('CHACHAPOYAS','3',36,'0')
--INSERT INTO Ubigeo VALUES  ('BAGUA','3',37,'0')
--INSERT INTO Ubigeo  VALUES  ('JUMBILLA','3',38,'0')
--INSERT INTO Ubigeo VALUES  ('LAMUD','3',39,'0')
--INSERT INTO Ubigeo  VALUES  ('MENDOZA','3',40,'0')
--INSERT INTO Ubigeo VALUES  ('SANTA MARIA DE NIEVA','3',41,'0')
--INSERT INTO Ubigeo  VALUES  ('BAGUA GRANDE','3',42,'0')
--INSERT INTO Ubigeo  VALUES  ('HUARAZ','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('AIJA','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('ANTONIO RAYMONDI','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('ASUNCION','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('BOLOGNESI','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('CARHUAZ','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('CARLOS FERMIN FITZCARRALD','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('CASMA','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('CORONGO','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('HUARI','2',7,'0')
--INSERT INTO Ubigeo vALUES  ('HUARMEY','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('HUAYLAS','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('MARISCAL LUZURIAGA','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('OCROS','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('PALLASCA','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('POMABAMBA','2',7,'0')
--INSERT INTO Ubigeo VALUES  ('RECUAY','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('SANTA','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('SIHUAS','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('YUNGAY','2',7,'0')
--INSERT INTO Ubigeo  VALUES  ('HUARAZ','3',50,'0')
--INSERT INTO Ubigeo  VALUES  ('AIJA','3',51,'0')
--INSERT INTO Ubigeo  VALUES  ('LLAMELLIN','3',52,'0')
--INSERT INTO Ubigeo VALUES  ('CHACAS','3',53,'0')
--INSERT INTO Ubigeo VALUES  ('CHIQUIAN','3',54,'0')
--INSERT INTO Ubigeo  VALUES  ('CARHUAZ','3',55,'0')
--INSERT INTO Ubigeo  VALUES  ('SAN LUIS','3',56,'0')
--INSERT INTO Ubigeo  VALUES  ('JOSE LEONARDO ORTIZ','3',27,'0')
--INSERT INTO Ubigeo  VALUES  ('SAN IGNACIO','2',6,'0')
 