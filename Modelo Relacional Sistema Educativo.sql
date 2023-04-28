create database SistemaEducativo;
use SistemaEducativo;

-------Creacion tablas---------------
create table Calificacion(
idCalificacion int primary key auto_increment,
Nota int not null,
idEstudianteFK int not null
);

create table Materia(
idMateria int primary key auto_increment,
Nombre varchar(50) not null,
idCalificacionFK int not null,
idProfesorFK int not null
);

create table Estudiante (
idEstudiante int primary key auto_increment,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Direccion varchar(30) not null,
Telefono int(11) not null,
tipoDoc enum('Tarjeta de identidad','Cedula de ciudadania','Cedula Extranjera','NIT','Pasaporte') not null,
numDoc int(11) not null,
edad int not null,
correo varchar(50) not null
);

create table Asistencia(
idAsistencia int primary key auto_increment,
Fecha date not null,
idMateriaFK int not null,
idEstudianteFK int not null
);

create table Profesor(
idProfesor int primary key auto_increment,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Direccion varchar(30) not null,
Telefono int(11) not null,
tipoDoc enum('Cedula de ciudadania','Cedula Extranjera','NIT','Pasaporte') not null,
numDoc int(11) not null,
edad int not null,
correo varchar(50) not null
);


-------------Relaciones---------------------------
alter table Calificacion add constraint CalificacionEstudiante
foreign key(idEstudianteFK) references Estudiante(idEstudiante);

alter table Materia add constraint MateriaCalificacion
foreign key(idCalificacionFK) references Calificacion(idCalificacion);

alter table Materia add constraint MateriaProfesor
foreign key(idProfesorFK) references Profesor(idProfesor);

alter table Asistencia add constraint AsistenciaMateria
foreign key(idMateriaFK) references Materia(idMateria);

alter table Asistencia add constraint AsistenciaEstudiante
foreign key(idEstudianteFK) references Estudiante(idEstudiante);

------------------Insercio	n------------------------ 
insert into Profesor values(1,'Jaime','Vasquez','CR68-70-42','563214564','Cedula de ciudadania','1014859746','22','Jaime@gmail.com');
insert into Profesor values(2,'Luis','Vinazco','Carrera 68b #70-42',563544564,'Cedula de ciudadania',1014989746,'30','Luis@gmail.com');
insert into Profesor values(3,'Carlos','Cruz','Carrera 68b #70-42',563454564,'Cedula de ciudadania',1014821746,'35','Carlos@gmail.com');
insert into Profesor values(4,'Miguel','Ulloa','Carrera 68b #70-42',56321434,'Cedula de ciudadania',1016559746,'40','Miguel@gmail.com');
insert into Profesor values(5,'Yeison','Rodriguez','Carrera 68b #70-42',545214564,'Cedula de ciudadania',1014859231,'37','Yeison@gmail.com');
insert into Profesor values(6,'Camilo','Rodriguez','Carrera 68b #70-42',563216514,'Cedula de ciudadania',101546746,'25','Camilo@gmail.com');
insert into Profesor values(7,'Yenny','Reyes','Carrera 68b #70-42',123214564,'Cedula de ciudadania',1321159746,'33','Yenny@gmail.com');
insert into Profesor values(8,'Michael','Alba','Carrera 68b #70-42',53214564,'Cedula de ciudadania',101456746,'36','Michael@gmail.com');
insert into Profesor values(9,'Fredy','Ulloa','Carrera 68b #70-42',563214564,'Cedula de ciudadania',1014859732,'34','Fredy@gmail.com');
insert into Profesor values(10,'Ruby','Cardoso','Carrera 68b #70-42',566514564,'Cedula de ciudadania',1017894746,'38','Ruby@gmail.com');

insert into Estudiante values(1,'Yeison','Vinazco','CR68-70-42','563214564','Tarjeta de identidad','1000229879','17','Yeison22@gmail.com');
insert into Estudiante values(2,'Carlos','Vasquez','Carrera 68b #70-44',563544564,'Cedula de ciudadania',1065223779,'18','Carlos12@gmail.com');
insert into Estudiante values(3,'Luis','Ulloa','Carrera 68b #70-48',563454564,'Tarjeta de identidad',1000298779,'16','Luis87@gmail.com');
insert into Estudiante values(4,'Camilo','Cruz','Carrera 68b #74-42',56321434,'Cedula de ciudadania',1000451779,'19','Camilo45@gmail.com');
insert into Estudiante values(5,'Jaime','Rodriguez','Carrera 68b #80-42',545214564,'Tarjeta de identidad',1065223779,'15','Jaime121@gmail.com');
insert into Estudiante values(6,'Miguel','Rodriguez','Carrera 68b #72-42',563216514,'Cedula de ciudadania',2000223779,'20','Miguel123@gmail.com');
insert into Estudiante values(7,'Machael','Ulloa','Carrera 68b #60-42',123214564,'Tarjeta de identidad',1065223779,'16','Machael5454@gmail.com');
insert into Estudiante values(8,'Yenny','Reyes','Carrera 78b #70-42',53214564,'Cedula de ciudadania',1451223779,'19','Yenny1232@gmail.com');
insert into Estudiante values(9,'Ruby','Cardoso','Carrera 98b #70-42',563214564,'Tarjeta de identidad',1065423779,'16','Ruby100@gmail.com');
insert into Estudiante values(10,'Fredy','Ulloa','Carrera 65b #70-42',566514564,'Cedula de ciudadania',1000228989,'18','Fredy546@gmail.com');

insert into Calificacion values(1,'50','1');
insert into Calificacion values(2,'60','10');
insert into Calificacion values(3,'75','4');
insert into Calificacion values(4,'80','7');
insert into Calificacion values(5,'90','5');
insert into Calificacion values(6,'100','1');
insert into Calificacion values(7,'55','6');
insert into Calificacion values(8,'66','8');
insert into Calificacion values(9,'75','1');
insert into Calificacion values(10,'70','2');

insert into Materia values(1,'Fisica','2','4');
insert into Materia values(2,'Matematicas','6','3');
insert into Materia values(3,'Calculo','4','1');
insert into Materia values(4,'Etica','3','2');
insert into Materia values(5,'Ingles','1','5');
insert into Materia values(6,'Español','5','6');
insert into Materia values(7,'Religión','7','8');
insert into Materia values(8,'Filosofia','8','7');
insert into Materia values(9,'Catedra de paz','10','10');
insert into Materia values(10,'Comunicación','9','9');

insert into Asistencia values(1,'23/04/23','2','3');
insert into Asistencia values(2,'23/04/26','1','10');
insert into Asistencia values(3,'23/04/23','4','9');
insert into Asistencia values(4,'23/04/23','3','8');
insert into Asistencia values(5,'23/04/24','6','7');
insert into Asistencia values(6,'23/04/25','5','6');
insert into Asistencia values(7,'23/04/26','8','5');
insert into Asistencia values(8,'23/04/23','7','2');
insert into Asistencia values(9,'23/04/28','10','1');
insert into Asistencia values(10,'23/04/29','9','4');

------Modificar atributo--------
Select idAsistencia as id, FechaN as Fecha from Asistencia;
Select idCalificacion as id, Nota as Calificacion from Calificacion;
Select idEstudiante as id from Asistencia;
Select idMateria as id from Asistencia;
Select idProfesor as id from Asistencia;


------Los primero 5 datos de cada tabla---------
select * from Asistencia where idAsistencia<=5;
select * from Calificacion where idAsistencia<=5;
select * from Materia where idAsistencia<=5;
select * from Estudiante where idAsistencia<=5;
select * from Profesor where idAsistencia<=5;

--------Consulta por numero par-------
select * from Asistencia where mod(idAsistencia,2)=0; 
select * from Calificacion where mod(idCalificacion,2)=0; 
select * from Materia where mod(idMateria,2)=0; 
select * from Estudiante where mod(idEstudiante,2)=0; 
select * from Profesor where mod(idProfesor,2)=0; 

----------SubConsulta----------
select e.Nombre, e.Apellido, c.Calificacion from Estudiante as e inner join Calificacion as c on e.idEstudiante=c.idEstudianteFK;

