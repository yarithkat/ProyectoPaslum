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

create table TblCatalogoEvaluacion(
id int not null identity(1,1),
strDescripcio varchar(300),
constraint pk_CatalogoEva primary key (id));

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

 
create table TblCatalogoParcial(
id int not null identity(1,1),
strDescripcion varchar(300),
strTipoEvaluacion varchar(100),
idCatalogoEvaluacion int,
constraint pk_CatalogoPar primary key (id),
constraint fkIdCatalogoEvaluacion_CatalogoParcial foreign key(idCatalogoEvaluacion) references TblCatalogoEvaluacion(id)
);


create table TblMateria(
id int not null identity(1,1),
strNombre varchar(200),
strDescripcion varchar(200),
bStatus varchar(10),
idCatalogoParcial int,
idNota int,
idCarrera int,
idCuatri int,
constraint pk_Materia primary key(id),
constraint fkIdCatalogoParcial_Materia foreign key(idCatalogoParcial) references TblCatalogoParcial(id),
constraint fkIdNota_Materia foreign key(idNota) references TblNota(id),
constraint fkIdCarrera_Materia foreign key(idCarrera) references TblCarrera(id),
constraint fkIdCuatri_Materia foreign key(idCuatri) references TblCuatri(id),
);

create table TblGrupo(
id int not null identity(1,1),
strNombre varchar(200),
strCapacidad varchar(200),
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
constraint pk_Alumno primary key (Id),
constraint fkIdDireccion_Alumno foreign key(idDireccion) references TblDireccion(id),
constraint fkIdTelefono_Alumno foreign key(idTelefono) references TblTelefono(id),
constraint fkIdUser_Alumno foreign key(idUser) references TblUser(id),
constraint fkIdCarrera_Alumno foreign key(idCarrera) references TblCarrera(id),
constraint fkIdCuatri_Alumno foreign key(idCuatri) references TblCuatri(id),
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

create table TblQR(
id int not null identity(1,1),
qr varchar(1000),
fecha datetime,
idProfesor int,
idGrupo int,
idMateria int,
idCarrera int,
constraint pk_QR primary key (id),
constraint fkIdProfesor_QR foreign key(idProfesor) references TblProfesor(id),
constraint fkIdGrupo_QR foreign key(idGrupo) references TblGrupo(id),
constraint fkIdMateria_QR foreign key(idMateria) references TblMateria(id),
constraint fkIdCarrera_QR foreign key(idCarrera) references TblCarrera(id),
);

create table TblAsignacionMateria(
id int not null identity(1,1),
idProfesor int,
idMateria int,
constraint pk_AsignacionMateria primary key (id),
constraint fkIdProfesor_Asignacion foreign key(idProfesor) references TblProfesor(id),
constraint fkIdMateria_Asignacion foreign key(idMateria) references TblMateria(id),
);

create table TblAsignacionGrupo(
id int not null identity(1,1),
idGrupo int,
idAsignacionMateria int,
constraint fkIdGrupo_AsigGrupo foreign key(idGrupo) references TblGrupo(id),
constraint fkIdGrupo_AsignMate foreign key(idAsignacionMateria) references TblAsignacionMateria(id),
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
select * from TblAlumnoMateria;
select * from TblCatalogoParcial;
select * from TblCatalogoEvaluacion
select * from TblAsignacionMateria
select * from TblAsignacionGrupo

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

select strNombre, strFechaInicio, strFechaFin from TblCuatri;

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

select p.strNombre as profesor, m.strNombre as materia
from TblAsignacionMateria a
inner join TblProfesor p
on a.idProfesor = p.id
inner join TblMateria m
on a.idProfesor = m.id



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
on m.idCarrera = c.id