CREATE DATABASE pase_lista;
USE pase_lista;
drop database pase_lista;

create table TblCuatri(
id int not null identity(1,1),
strNombre varchar(200),
strFechaInicio date,
strFechaFin date,
constraint pk_Cuatri primary key(id)
);

create table TblJustificante(
id  int not null primary key identity(1,1), 
strMotivo varchar(50),
strArchivo varchar(200)
);

create table TblNota(
id int not null identity(1,1),
strDescripcion varchar(1000),
constraint pk_Notas primary key (id));

create table TblCarrera(
id int not null identity(1,1),
strClave varchar(200),
strNombre varchar(200),
strArea varchar(200),
bStatus varchar(10),
constraint pk_Carrera primary key(id));

create table TblUser(
id int not null identity(1,1),
strusuario varchar(200),
strpass varchar(200),
strtipoUsuario varchar(150)
constraint pk_UserLoggin
primary key(id));

create table TblTelefono(
id int not null identity(1,1),
strcelular varchar(50),
strtelCasa varchar(50),
strotro varchar(50)
constraint pk_Telefono
primary key (id));

create table TblDireccion(
id int not null identity(1,1),
strestado varchar(150),
strmunicipio varchar(150),
strcolonia varchar(150),
strcalle varchar(150),
intcodpost int,
strnumInt varchar(50),
strnumExt varchar(50),
strreferencias varchar(400),
constraint pk_Direccion
primary key (id));

 

create table TblMateria(
id int not null identity(1,1),
strNombre varchar(200),
strDescripcion varchar(200),
bStatus varchar(10),
idNota int,
idCarrera int,
idCuatri int,
constraint pk_Materia primary key(id),
constraint fkIdNota_Materia foreign key(idNota) references TblNota(id),
constraint fkIdCarrera_Materia foreign key(idCarrera) references TblCarrera(id),
constraint fkIdCuatri_Materia foreign key(idCuatri) references TblCuatri(id),
);

create table TblGrupo(
id int not null identity(1,1),
strNombre varchar(200),
strCapacidad int,
idCarrera int
constraint pk_Grupo primary key(id),
constraint fkIdCarrera_Grupo foreign key(idCarrera) references TblCarrera(id),
);


create table TblAlumno(
id int not null identity(1,1),
strNombre varchar(200),
strApellidoP varchar(200),
strApellidoM varchar(200),
intEdad int,
strSexo varchar(100),
strCorreo varchar(200),
bitFoto varchar(max),
idDireccion int,
idTelefono int,
idUser int,
idCarrera int,
idCuatri int,
idGrupo int,
constraint pk_Alumno primary key (Id),
constraint fkIdDireccion_Alumno foreign key(idDireccion) references TblDireccion(id),
constraint fkIdTelefono_Alumno foreign key(idTelefono) references TblTelefono(id),
constraint fkIdUser_Alumno foreign key(idUser) references TblUser(id),
constraint fkIdCarrera_Alumno foreign key(idCarrera) references TblCarrera(id),
constraint fkIdCuatri_Alumno foreign key(idCuatri) references TblCuatri(id),
constraint fkIdGrupo_Alumno foreign key(idGrupo) references TblGrupo(id),
);


create table TblProfesor(
id int not null identity(1,1),
strNombre varchar(200),
strApellidoP varchar(200),
strApellidoM varchar(200),
intEdad int,
strSexo varchar(100),
strCorreo varchar(200),
bitFoto varchar(max),
strCedula varchar(200),
strEspecialidad varchar(200),
idDireccion int,
idTelefono int,
idUser int
constraint pk_Profesor primary key (Id),
constraint fkIdDireccion_Profesor foreign key(idDireccion) references TblDireccion(id),
constraint fkIdTelefono_Profesor foreign key(idTelefono) references TblTelefono(id),
constraint fkIdUser_Profesor foreign key(idUser) references TblUser(id)
);


create table TblAsistencia(
id int not null identity(1,1),
dteFecha dateTime,
idMateria int,
idAlumno int,
idJustificante int,
constraint pk_Asistencia primary key (id),
constraint fkIdMateria_Asistencia foreign key(idMateria) references TblMateria(id),
constraint fkIdAlumno_Asistencia foreign key(idAlumno) references TblAlumno(id),
constraint fkIdJustificante_Asistencia foreign key(idJustificante) references TblJustificante(id),
);

create table TblAlumnoMateria(
id int not null identity(1,1),
idAlumno int,
idMateria int,
idNotas int,
constraint pk_AlumnoMateria primary key (id),
constraint fkIdAlumno_AlumnoMateria foreign key(idAlumno) references TblAlumno(id),
constraint fkIdMateria_AlumnoMateria foreign key(idMateria) references TblMateria(id),
constraint fkIdNotas_AlumnoMateria foreign key(idNotas) references TblNota(id)
);


create table TblAsignacionMateria(
id int not null identity(1,1),
idProfesor int,
idMateria int,
constraint pk_AsignacionMateria primary key (id),
constraint fkIdProfesor_Asignacion foreign key(idProfesor) references TblProfesor(id),
constraint fkIdMateria_Asignacion foreign key(idMateria) references TblMateria(id),
);


create table TblQR(
id int not null identity(1,1),
qr varchar(1000),
fecha datetime,
idProfesor int,
idGrupo int,
idAsignacion int,
idCarrera int,
constraint pk_QR primary key (id),
constraint fkIdProfesor_QR foreign key(idProfesor) references TblProfesor(id),
constraint fkIdGrupo_QR foreign key(idGrupo) references TblGrupo(id),
constraint fkIdAsignacion_QR foreign key(idAsignacion) references TblAsignacionMateria(id),
constraint fkIdCarrera_QR foreign key(idCarrera) references TblCarrera(id),
);

create table TblAsignacionGrupo(
id int not null identity(1,1),
idGrupo int,
idAsignacionMateria int,
constraint pk_AsignacionGrupo primary key (id),
constraint fkIdGrupo_AsigGrupo foreign key(idGrupo) references TblGrupo(id),
constraint fkIdGrupo_AsignMate foreign key(idAsignacionMateria) references TblAsignacionMateria(id),
);

create table TblCatalogoParcial(
id int not null identity(1,1),
strNombre varchar(300),
strDescripcion varchar(300),
intPorcentaje int,
idAsignacionMaeria int,
constraint pk_CatalogoPar primary key (id),
constraint fkIdAsignacionMateria_CatalogoParcial foreign key(idAsignacionMaeria) references TblAsignacionMateria(id)
);

create table TblCatalogoEvaluacion(
id int not null identity(1,1),
strDescripcion varchar(300),
idCatalogoParcial int,
constraint pk_CatalogoEva primary key (id),
constraint fkIdCatalogoEvaluacion_CatalogoParcial foreign key(idCatalogoParcial) references TblCatalogoParcial(id));

create table TblCalificacion(
id int not null identity(1,1),
valCalificacion decimal(5,2), 
idAlumno int,
idCatalogoParcial int,
constraint pk_Calificacion primary key (id),
constraint fkIdParcial_Calificacion foreign key(idCatalogoParcial) references TblCatalogoParcial(id),
constraint fkIdAlumno_Calificacion foreign key(idAlumno) references TblAlumno(id),
);

select * from TblDireccion;
select * from TblTelefono;
select * from TblProfesor;
select * from TblUser;
select * from TblCarrera;
select * from TblAlumno;
select * from tblMateria;
select * from TblCuatri;
select * from TblGrupo;
select * from TblQr;
select * from TblAlumnoMateria;
select * from TblCatalogoParcial;
select * from TblCatalogoEvaluacion
select * from TblAsignacionMateria
select * from TblAsignacionGrupo
select * from TblCalificacion

SELECT pro.id ,pro.strNombre, pro.strApellidoP, 
	   pro.strApellidoM, pro.strCorreo, pro.strCedula,
	   pro.strEspecialidad, tel.strcelular, tel.strtelCasa 
FROM TblProfesor as pro
inner join TblTelefono  as tel 
on pro.idTelefono = tel.id;

select al.id, al.strNombre, al.strApellidoP, al.strApellidoM,
		us.strusuario, us.strpass,
		car.strNombre, car.strArea		
from TblAlumno as al
inner join TblUser as us
on al.idUser = us.id
inner join TblCarrera as car
on al.idCarrera = car.id
order by al.id desc;

select g.strNombre, g.strCapacidad, c.strnombre
from TblGrupo g
inner join TblCarrera c
on g.idCarrera = c.id;

select m.strNombre, m.strDescripcion, c.strnombre,cu.strnombre 
from TblMateria m
inner join TblCarrera c 
on m.idCarrera = c.id
inner join TblCuatri cu
on m.idCuatri = cu.id;

update TblCarrera 
set bStatus = 1
where id = 2;

select a.strNombre, m.strNombre, m.strDescripcion
from TblAlumno a
inner join TblCuatri c 
on a.idCuatri = c.id
inner join TblMateria m
on m.idCuatri = c.id;

/********Consulta de asignación de Materia*******/
select p.strNombre as profesor, m.strNombre as materia

from TblAsignacionMateria a
inner join TblProfesor p
on a.idProfesor = p.id

inner join TblMateria m
on a.idMateria = m.id



/*********Consulta para la asignación de grupos************/
select g.strNombre as 'Nombre Grupo', 
p.strNombre as 'Profesor', p.strApellidoP as 'Apellido Paterno', p.strApellidoM as 'Apellido Materno',
m.strNombre as 'Materia', c.strNombre 'Carrera'
from TblAsignacionGrupo ag
inner join TblGrupo g
on ag.idGrupo = g.id

inner join TblAsignacionMateria am
on ag.idAsignacionMateria = am.id

inner join TblProfesor p
on am.idProfesor = p.id

inner join TblMateria m
on am.idMateria = m.id

inner join TblCarrera c
on g.idCarrera = c.id

/******ver la tablas signacion de materia*****/

select p.strNombre as 'Profesor', p.strApellidoP as 'Apellido Paterno', p.strApellidoM as 'Apellido Materno',
m.strNombre as 'Materia'
from TblAsignacionMateria am

inner join TblMateria m
on am.idMateria = m.id

inner join TblProfesor p
on am.idProfesor = p.id



select ce.strDescripcion, cp.strNombre, cp.strDescripcion, cp.intPorcentaje
from TblCatalogoEvaluacion ce
inner join TblCatalogoParcial cp
on cp.id = ce.idCatalogoParcial
order by cp.strNombre

select m.strNombre 'Materia', m.strDescripcion 'Descripción', 
c.strnombre 'Carrera',cu.strnombre 'Cuatrimestre'
from TblMateria m
inner join TblCarrera c 
on m.idCarrera = c.id
inner join TblCuatri cu
on m.idCuatri = cu.id;


/***Consulta de para saber el parcial de que profesor en que materia***/
select cp.strNombre as 'Parcial',
p.strNombre as 'Profesor', m.strNombre as 'Materia'
from TblCatalogoParcial cp

inner join TblAsignacionMateria am
on cp.idAsignacionMaeria = am.id

inner join TblProfesor p
on p.id = am.idProfesor

inner join TblMateria m
on m.id = am.idMateria;

/****Consulta para ver la suma de los parciales***/
select m.strNombre as 'Materia',sum(cp.intporcentaje) as 'Porcentaje Total'
from TblCatalogoParcial cp
join TblAsignacionMateria am
on cp.idAsignacionMaeria = am.id
join TblMateria m
on am.idMateria = m.id
where cp.idAsignacionMaeria = 3
group by cp.idAsignacionMaeria, m.strNombre


/****Consulta para asingnar las calificaciones***/

select a.strNombre, a.strApellidoP,a.strApellidoM,
c.valCalificacion, g.strNombre as 'grupo',cp.strNombre as 'parcial'
from TblAlumno a
inner join TblCalificacion c 
on c.idAlumno = a.id
inner join TblCatalogoParcial cp
on c.idCatalogoParcial = cp.id
inner join TblGrupo g
on a.idGrupo = g.id
where g.id = '1' and cp.id = '1'


select a.strNombre, a.strApellidoP,a.strApellidoM, cp.strNombre,
g.strNombre as 'GRUPO', cal.valCalificacion as 'CALIFICACION'
from TblAlumno a
inner join TblGrupo g
on a.idGrupo = g.id
inner join TblCarrera car
on a.idCarrera = car.id
inner join TblAsignacionGrupo ag
on g.id = ag.idGrupo
inner join TblAsignacionMateria am
on am.id = ag.idAsignacionMateria
inner join TblCatalogoParcial cp
on cp.idAsignacionMaeria = am.id
inner join TblCalificacion cal
on cal.idCatalogoParcial = cp.id
where g.id = 1 and car.id = 1 and cp.id=1


select c.valCalificacion as 'Calificacion', cp.strNombre 'Parcial',
g.strNombre as 'Grupo', al.strNombre as 'Alumno', al.strApellidoM as 'Apellido P', al.strApellidoP as 'Apellido M',
car.strNombre, ma.strNombre as 'Materia'
from TblCalificacion c
inner join TblCatalogoParcial cp
on c.idCatalogoParcial = cp.id

inner join TblAsignacionMateria am
on cp.idAsignacionMaeria = am.id

inner join TblAsignacionGrupo ag
on ag.idAsignacionMateria = am.id

inner join TblGrupo g
on g.id = ag.idGrupo

inner join TblAlumno al
on al.idGrupo = g.id

inner join TblCarrera car
on car.id = al.idCarrera

inner join TblMateria ma
on ma.id = am.idMateria

where car.id = 1, cal.

/*******Conulta numero de alumnos*****/
select count(al.idGrupo) as 'Num. Alum', g.strCapacidad as 'Max.'
from TblAlumno al
inner join TblGrupo g
on al.idGrupo = g.id
inner join TblCarrera c
on c.id = al.idCarrera
where al.idGrupo = 1 and c.id = 1
group by g.strCapacidad

/*******Conulta numero de alumnos*****/
select al.strNombre, g.strNombre, ma.strNombre, cp.strNombre, cal.valCalificacion
from TblAlumno as al
inner join TblGrupo g
on al.idGrupo = g.id
inner join TblAsignacionGrupo as ag
on al.idGrupo = ag.idGrupo
inner join TblAsignacionMateria as am
on am.id = ag.idAsignacionMateria
inner join TblMateria as ma
on ma.id = am.idMateria
inner join TblCatalogoParcial as cp
on cp.idAsignacionMaeria = am.id
inner join TblCalificacion as cal
on cal.idCatalogoParcial = cp.id
where cal.idAlumno = 1 and al.id = 1

select * from TblAlumnoMateria
select * from TblAsignacionMateria

select * from TblCatalogoParcial
select * from tblCarrera
select * from TblAlumno

Insert into TblTelefono values ('5431','54123','6789');
Insert into TblTelefono values ('7723271','9217312','7217372');
Insert into TblTelefono values ('0231','3283','1324');
Insert into TblTelefono values ('5431','54123','6789');
Insert into TblTelefono values ('7723271','9217312','7217372');

Insert into TblDireccion values ('HIDALGO','TEPEJI','SAN JUAN','NIGROMANTE','123','1','21','KINDER');
Insert into TblDireccion values ('HIDALGO','TULA','EL CARMEN','CORONEL','123','1','21','PORTON');
Insert into TblDireccion values ('HIDALGO','ATITALAQUIA','SAGRADO','MELCHOR OCAMPO','321','21','231','PORTON');
Insert into TblDireccion values ('HIDALGO','TULA','EL CARMEN','CORONEL','123','1','21','PORTON');
Insert into TblDireccion values ('HIDALGO','ATITALAQUIA','SAGRADO','MELCHOR OCAMPO','321','21','231','PORTON');

Insert into TblUser values ('rodrigo@gmail.com','1234','PROFESOR')
Insert into TblUser values ('samuel@gmail.com','1234','PROFESOR')
Insert into TblUser values ('norma@gmail.com','1234','ALUMNO')
Insert into TblUser values ('katia@gmail.com','1234','ALUMNO')
Insert into TblUser values ('yarith@gmail.com','1234','ALUMNO')

Insert into TblProfesor values ('RODRIGO','MONTERO','OROZCO','21','HOMBRE','rodrigo@gmail.com','','BANSDBAS123','PROGRAMACIÓN',1,1,1)
Insert into TblProfesor values ('SAMUEL','ESTEBAN', 'DIAZ','25','HOMBRE','samuel@gmail.com','','BANSDBAS123','BASE DE DATOS',2,2,2)

Insert into TblCarrera values ('1','TICS','DESARROLLO DE SOFTWARE','1')
Insert into TblCarrera values ('2','MERCA','MERCADOTECNIA','1')

Insert into TblCuatri values ('CUATRIMESTRE 1','2019-01-01','2019-04-20')
Insert into TblCuatri values ('CUATRIMESTRE 2','2019-05-01','2019-09-12')

Insert into TblMateria values ('REDES','CISCO','1',NULL,1,1)
Insert into TblMateria values ('PROGRAMACIÓN','ARBOLES','1',NULL,1,2)

Insert into TblGrupo values('GRUPO 1','50','1');
Insert into TblGrupo values('GRUPO 2','50','1');
Insert into TblGrupo values('GRUPO 1','50','2');

Insert into TblAlumno values ('NORMA','ADAME', 'ROSAS','21','MUJER','norma@gmail.com','',3,3,3,1,1,1)
Insert into TblAlumno values ('KATIA','PARRA', 'MARTINEZ','21','MUJER','katia@gmail.com','',4,4,4,1,1,1)
Insert into TblAlumno values ('YARITH','MUCIÑO', 'SANCHEZ','21','MUJER','yarith@gmail.com','',5,5,5,2,2,2)

Insert into TblAlumnoMateria values(1,1,'');

Insert into TblAsignacionMateria values(1,1);

Insert into TblCalificacion values(10,1,1);
