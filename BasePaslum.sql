CREATE DATABASE pase_lista;
USE pase_lista;
drop database pase_lista;

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
strArea varchar(200)
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
constraint pk_Materia primary key(id),
constraint fkIdCatalogoParcial_Materia foreign key(idCatalogoParcial) references TblCatalogoParcial(id),
constraint fkIdNota_Materia foreign key(idNota) references TblNota(id),
);

create table TblGrupo(
id int not null identity(1,1),
strNombre varchar(200),
strCapacidad varchar(200),
idCarrera int
constraint pk_Grupo primary key(id),
constraint fkIdCarrera_Grupo foreign key(idCarrera) references TblCarrera(id),
);

create table TblCuatri(
id int not null identity(1,1),
strNombre varchar(200),
strPeriodo varchar(200),
idCarrera int,
idMateria int
constraint pk_Cuatri primary key(id),
constraint fkIdCarrera_Cuatri foreign key(idCarrera) references TblCarrera(id),
constraint fkIdMateria_Cuatri foreign key(idMateria) references TblMateria(id)
);

create table TblAlumno(
id int not null identity(1,1),
strNombre varchar(200),
strApellidoP varchar(200),
strApellidoM varchar(200),
intEdad int,
strSexo varchar(100),
strCorreo varchar(200),
intMatricula int,
bitFoto varchar(max),
idDireccion int,
idTelefono int,
idUser int,
constraint pk_Alumno primary key (Id),
constraint fkIdDireccion_Alumno foreign key(idDireccion) references TblDireccion(id),
constraint fkIdTelefono_Alumno foreign key(idTelefono) references TblTelefono(id),
constraint fkIdUser_Alumno foreign key(idUser) references TblUser(id)
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
idUser int,
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
constraint pk_Asistencia primary key (id),
constraint fkIdMateria_Asistencia foreign key(idMateria) references TblMateria(id),
constraint fkIdAlumno_Asistencia foreign key(idAlumno) references TblAlumno(id),
);

create table TblAlumnoMateria(
id int not null identity(1,1),
idAlumno int,
idMateria int,
idNotas int,
constraint pk_AlumnoMateria primary key (id),
constraint fkIdAlumno_AlumnoMateria foreign key(idAlumno) references TblAlumno(id),
constraint fkIdMateria_AlumnoMateria foreign key(idMateria) references TblMateria(id),
constraint fkIdNotas_AlumnoMateria foreign key(idNotas) references TblNota(id),
);

select * from TblPadre;
select * from TblDireccion;
select * from TblTelefono;
select * from TblProfesor;
<<<<<<< HEAD
select * from TblUser;
=======
select * from TblUser;
select * from TblCarrera;

SELECT pro.id ,pro.strNombre, pro.strApellidoP, 
	   pro.strApellidoM, pro.strCorreo, pro.strCedula,
	   pro.strEspecialidad, tel.strcelular, tel.strtelCasa 
FROM TblProfesor as pro
inner join TblTelefono  as tel 
on pro.idTelefono = tel.id;
>>>>>>> master
