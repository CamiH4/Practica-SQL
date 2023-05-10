create database BDMonitores
go

use BDMonitores
go

--Crear la tabla Estudiantes
Create Table Estudiantes(
	ID_estudiante int primary key
	,IDUCA nvarchar(9) not null unique
	,Nombre nvarchar(50)
	,Apellido nvarchar(50)
	,FechaNac dateTime
	,Correo_electronico nvarchar(100)
	,Telefono nvarchar(20)
	,Carrera  nvarchar(50)
	,Activo bit default 'True'
);

--Crear la tabla Clases
Create table Clases(
	ID_clase int primary key not null
	,Codigo_clase nvarchar(20) unique not null
	,Nombre_clase nvarchar(50) not null
	,Horario nvarchar(50)
);

--Crear la tabla Monitores
Create table Monitores(
	ID_monitor int primary key
	,ID_estudiante int
	,ID_clase int
	,Anio_en_curso int
	,Semestre_en_curso nvarchar(20)
	,Foreign key (ID_estudiante) References Estudiantes(ID_estudiante)
	,Foreign key (ID_clase) References Clases (ID_clase)
);

SELECT        Estudiantes.*
FROM            Estudiantes

Insert into Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, 
Correo_electronico, Telefono, Carrera, Activo) values
(123456789, N'000012345', N'Joel', N'Silva', N'2000-09-12', N'joel.silva@gmail.com', N'12345678', N'Ingeniería en Sistemas de Información', 1)
,(987654321, N'000098765', N'Sofía', N'Santos', N'2003-10-10', N'sofia.santos@gmail.com', N'98765432', N'Derecho', 1)
,(246813579, N'000024681', N'Alejandro', N'Silva', N'1998-01-05', N'alejandro.silva@gmail.com', N'24681357', N'Ingeniería Civil', 1)
,(135792468, N'000013579', N'Valentina', N'Silva', N'2002-07-13', N'valentina.silva@gmail.com', N'13579246', N'Ingeniería Ambiental', 1)
,(864209753, N'000086420', N'Diego', N'Hernández', N'2004-09-27', N'diego.hernandez@gmail.com', N'86420975', N'Ingeniería en Sistemas de Información', 1)
,(579314286, N'000057931', N'Isabella', N'Rodríguez', N'1998-05-14', N'isabella.rodriguez@gmail.com', N'57931428', N'Diseño Gráfico', 1)
,(632589147, N'000063258', N'Mateo', N'González', N'2001-04-16', N'mateo.gonzalez@gmail.com', N'63258914', N'Ingeniería en Sistemas de Información', 1)
,(415273896, N'000041527', N'Camila', N'García', N'1997-03-21', N'camila.garcia@gmail.com', N'41527389', N'Psicología', 1)
,(798042615, N'000079804', N'Lucas', N'Morales', N'2003-02-15', N'lucas.morales@gmail.com', N'79804261', N'Marketing', 1)
,(352196874, N'000035219', N'Emma', N' López', N'2002-06-28', N'emma.lopez@gmail.com', N'35219687', N'Ingeniería Industrial', 1)
--10
,(604189257, N'000060418', N'Gabriel', N'Castro', N'2003-09-10', N'gabriel.castro@gmail.com', N'60418925', N'Psicología', 1)
,(957421683, N'000095742', N'Nathalia', N'Sánchez', N'2002-11-03', N'natalia.sanchez@gmail.com', N'95742168', N'Ingeniería en Sistemas de Información', 1)
,(483571962, N'000048357', N'Andrés', N'Jiménez', N'2001-12-05', N'andres.jimenez@gmail.com', N'48357196', N'Ingeniería Civil', 1)
,(270386451, N'000027038', N'Victoria ', N'Rodríguez', N'2001-09-22', N'victoria.rodriguez@gmail.com', N'27038645', N'Marketing', 1)
,(619208437, N'000061920', N'Rafael ', N'Vargas', N'2001-03-17', N'rafael.vargas@gmail.com', N'61920843', N'Ingeniería Ambiental', 1)
,(865712930, N'000086571', N'Luciana', N'Rojas', N'2001-10-30', N'luciana.rojas@gmail.com', N'86571293', N'Ingeniería en Sistemas de Información', 1)
,(537896412, N'000053789', N'Javier', N'Roa', N'2001-05-23', N'javier.roa@gmail.com', N'53789641', N'Diseño Gráfico', 1)
,(904726853, N'000090472', N'Laura', N'Herrera', N'2000-09-08', N'laura.herrera@gmail.com', N'90472685', N'Ingeniería en Sistemas de Información', 1)
,(147695328, N'000014769', N'Antonio', N'Paredes', N'2000-06-11', N'antonio.paredes@gmail.com', N'14769532', N'Derecho', 1)
,(386951247, N'000038695', N'Valeria ', N'Ramírez', N'2000-12-18', N'valeria.ramirez@gmail.com', N'38695124', N'Ingeniería Civil', 1)
--10
,(691428735, N'000069142', N'Carlos', N'Ríos', N'2000-02-20', N'carlos.rios@gmail.com', N'69142873', N'Ingeniería en Sistemas de Información', 1)
,(235879614, N'000023587', N'Antonella', N'González', N'1999-08-05', N'camila.garcia@gmail.com', N'23587961', N'Derecho', 1)
,(856394217, N'000085639', N'Juan', N'López', N'1999-01-12', N'juan.lopez@gmail.com', N'85639421', N'Ingeniería en Sistemas de Información', 1)
,(519637284, N'000051963', N'Rebeca', N'Rocha', N'1999-05-31', N'rebeca.rocha@gmail.com', N'51963728', N'Ingeniería Ambiental', 1)
,(402751963, N'000040275', N'Ismael', N'Tinoco', N'1999-10-06', N'ismael.tinoco@gmail.com', N'40275196', N'Ingeniería Civil', 1)
,(783465129, N'000078346', N'Fráncis', N'Jarquín', N'1998-12-11', N'francis.jarquin@gmail.com', N'78346512', N'Ingeniería en Sistemas de Información', 1)
,(124890576, N'000012489', N'Gustavo', N'Pérez', N'1998-09-03', N'gustavo.perez@gmail.com', N'12489057', N'Ingeniería en Sistemas de Información', 1)
,(478512693, N'000047851', N'Cecilia', N'Navarro', N'1998-04-27', N'cecilia.navarro@gmail.com', N'47851269', N'Psicología', 1)
,(639247158, N'000063924', N'Harold', N'Martínez', N'1998-11-02', N'harold.martinez@gmail.com', N'63924715', N'Ingeniería Ambiental', 1)
,(297548631, N'000029754', N'Giselle', N'Hernández', N'2003-04-19', N'giselle.hernandez@gmail.com', N'29754863', N'Ingeniería en Sistemas de Información', 1)
--10
,(572139468, N'000057213', N'Alfredo', N'Roa', N'2002-10-14', N'alfredo.roa@gmail.com', N'57213946', N'Ingeniería en Sistemas de Información', 1)
,(951623784, N'000095162', N'Lidia', N'Osorio', N'2000-10-09', N'lidia.osorio@gmail.com', N'95162378', N'Marketing', 1)
,(361095274, N'000036109', N'Lucas', N'Rocha', N'2000-07-27', N'lucas.rocha@gmail.com', N'68235947', N'Ingeniería Civil', 1)
,(824561397, N'000082456', N'Raquel', N'González', N'1999-07-15', N'raquel.gonzalez@gmail.com', N'92581673', N'Ingeniería Ambiental', 1)
,(507936182, N'000050793', N'Samuel', N'Gurdián', N'1999-12-29', N'samuel.gurdian@gmail.com', N'30947528', N'Ingeniería en Sistemas de Información', 1)
,(618725349, N'000061872', N'Gabriela', N'Téllez', N'1998-07-20', N'gabriela.tellez@gmail.com', N'17652834', N'Ingeniería Civil', 1)
,(439207865, N'000043920', N'Leonardo', N'Mejía', N'1998-03-13', N'leonardo.mejia@gmail.com', N'85314769', N'Ingeniería en Sistemas de Información', 1)
,(746382519, N'000074638', N'Tania', N'Solís', N'1998-06-08', N'tania.solis@gmail.com', N'41509628', N'Derecho', 1)
,(283149657, N'000028314', N'Jorge', N'Álvarez', N' 1998-11-02', N'jorge.alvarez@gmail.com', N'69483210', N'Ingeniería Civil', 1)
,(695078432, N'000069507', N'Darling', N'Salazar', N'2004-03-12', N'darling.salazar@gmail.com', N'57290386', N'Psicología', 1)

insert into Clases(ID_clase, Codigo_clase, Nombre_clase, Horario) values
(123456, N'TEC001', N'Metodología de la programación', N'Lúnes 7:30 AM - 8:30 AM')
,(246813, N'CAL001', N'Cálculo 1', N'Mártes 10:50 AM - 12:20 PM' )
,(987654, N'CAL002', N'Cálculo 2', N'Miércoles 9:00 PM - 10:30 PM')
,(135792, N'TEC012', N'Programación orientada a objetos', N'Viernes 10:50 AM - 12:20 PM')
,(864209, N'FIS001', N'Física 1', N'Juéves 9:00 AM - 10:30 PM')
,(579314, N'ESP002', N'Taller de redacción', N'Viernes 9:30 PM - 10:30 PM')
,(632589, N'ALG003', N'Álgebra lineal', N'Juéves 7:30 AM - 8:30 AM')
,(415273, N'ESP001', N'Taller de lectura comprensiva', N'Lúnes 9:30 PM - 10:30 PM')
,(798042, N'ING001', N'Inglés 1', N'Lúnes 9:00 AM - 10:30 AM')
,(352196, N'TEC014', N'Algoritmos y estructuras de datos', N'Mártes 9:00 AM - 10:30 AM')

SELECT        Clases.*
FROM            Clases

SELECT        Monitores.*
FROM            Monitores

insert into Monitores(ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) values
(1, 856394217, 135792, 4, N'V')
,(2, 283149657, 987654, 3, N'VI')
,(3, 639247158, 246813, 2, N'III')
,(4, 439207865, 135792, 3, N'V')
,(5, 904726853, 123456, 2, N'III')
,(6, 824561397, 987654, 4, N'VII')
,(7, 352196874, 246813, 2, N'III')
,(8, 904726853, 352196, 2, N'III')
,(9, 246813579, 864209, 2, N'IV')
,(10, 297548631, 123456, 2, N'III')
,(11, 402751963, 987654, 4, N'VIII')
,(12, 386951247, 864209, 3, N'V')
,(13, 507936182, 135792, 3, N'VI')
,(14, 618725349, 864209, 4, N'VII')
,(15, 619208437, 987654, 2, N'III')
,(16, 783465129, 864209, 4, N'VII')
,(17, 483571962, 246813, 2, N'III')
,(18, 519637284, 246813, 4, N'VII')
,(19, 572139468, 135792, 3, N'V')
,(20, 957421683, 135792, 3, N'VI')

update Monitores set Semestre_en_curso = N'VI' where ID_monitor = 1
update Monitores set ID_estudiante = 123456789  where ID_monitor = 6
update Monitores set Semestre_en_curso = N'IV' where ID_monitor = 4
update Monitores set ID_estudiante = 124890576 where ID_monitor = 14
update Monitores set ID_clase = 123456 where ID_monitor = 8

delete from Clases where ID_clase = 798042
delete from Clases where ID_clase = 579314
delete from Clases where ID_clase = 415273
delete from Clases where ID_clase = 632589
delete from Clases where ID_clase = 352196

--Muestra los monitores de la carrera de Ingeniería en sistema de información
select *,	Monitores.ID_estudiante from Estudiantes inner join Monitores on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
where Estudiantes.Carrera in (N'Ingeniería en Sistemas de Información')

--Muestra el nombre completo de los monitores, la clase que van a impartir y su correo electrónico
select Estudiantes.Nombre + ' ' + Estudiantes.Apellido As Nombre_Completo, 
Clases.Nombre_clase As Clase_Impartida, Estudiantes.Correo_electronico as Correo_Electónico
From Monitores inner join Estudiantes on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
inner join Clases on Monitores.ID_clase = Clases.ID_clase

--Muestra los monitores que cumplen años en mayo
select *,	Monitores.ID_estudiante from Estudiantes inner join Monitores on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
where MONTH(Estudiantes.FechaNac) = 5

--Muestra los monitores que cumplen años durante la semana del 8 al 13 de mayo (No salen porque no hay nadie en el registro con esos parámetros)
select *,	Monitores.ID_estudiante from Estudiantes inner join Monitores on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
where MONTH(Estudiantes.FechaNac) = 5 and DAY(Estudiantes.FechaNac) between 8 and 13

/*Muestra los monitores que posean en su nombre la letra u  (No salen porque no hay nadie en el registro con esos parámetros. 
Funciona con cualquier letra que pertenezca a los monitores)*/
select *,	Monitores.ID_estudiante from Estudiantes inner join Monitores on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
where Estudiantes.Nombre like '%u'

-- Muestra los monitores por una clase especifica
select Clases.Nombre_clase As Clase, Estudiantes.Nombre + ' ' + Estudiantes.Apellido as Monitor from Monitores  inner join Estudiantes on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
inner join Clases on Monitores.ID_clase = Clases.ID_clase where Clases.Nombre_clase in (N'Programación orientada a objetos')

--Cuenta los monitores mayores de edad
select COUNT(*) as Monitores_Mayores from Monitores inner join Estudiantes on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
where Datediff(year, Estudiantes.FechaNac, GETDATE()) >= 18

--Cuenta los monitores menores de edad
select COUNT(*) as Monitores_Mayores from Monitores inner join Estudiantes on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
where Datediff(year, Estudiantes.FechaNac, GETDATE()) < 18

--Muestra los Horarios 
select Clases.Nombre_clase,  Clases.Horario from Monitores  inner join Estudiantes on Monitores.ID_estudiante = Estudiantes.ID_estudiante 
inner join Clases on Monitores.ID_clase = Clases.ID_clase

