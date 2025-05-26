create database Senac
GO
use Senac
Go
create table Alunos (
       idAluno int identity(1,1),
	   nomeAluno varchar(100) not null,
	   emailAluno varchar(100) not null,
	   nascAluno date not null

	   constraint pk_idAluno primary key(idAluno) 
);
drop table Alunos
GO
insert into Alunos (nomeAluno,emailAluno,nascAluno)
			values
			('Mario AqueleQue','mario@aqueleque','2001-09-11'),
			('Pablo Escobar','pablo@escobar','1998-12-02'),
			('Muhammed Ali','muhammed@ali','2000-06-04');
GO
select * from Alunos
GO
create table TiposCursos(
                 idTipo int identity(1,1) primary key,
				 tituloTipo varchar(50) not null
				 );
insert into TiposCursos (tituloTipo) values('Medicina'),('Comunicação'),('TI');
select * from TiposCursos;

create table Cursos(
       idCurso int identity(1,1) primary key,
	   nomeCurso varchar(100) not null,
	   CargaHoraCurso int not null,
	   idTipo int foreign key references TiposCursos(idTipo)
);
drop table Cursos;
GO
insert into Cursos (nomeCurso,CargaHoraCurso,idTipo)
            values
			('Tecnico Em Tecnologia',1200,3),
			('Tecnico Em Enfermagem',2000,1),
			('Tecnico Em Radiologia',1800,1),
			('Tecnico Em Desenvolvimento de Sistemas',900,3),
			('Tecnico Em Administração',1600,2),
			('Tecnico Em Comunicação Social',800,2);
GO
select * from Cursos
GO
create table AlunosCursos(
					idAluno int not null,
					idCurso int not null,

					constraint fk_idCurso foreign key(idCurso) references Cursos(idCurso),
					constraint fk_idAluno foreign key(idAluno) references Alunos(idAluno),
					constraint pk_CursosALunos primary key (idCurso,idAluno)
 				);
insert into AlunosCursos(idAluno,idCurso)
           values
		   (1,1),
		   (1,4),
		   (2,2),
		   (2,3),
		   (2,5),
		   (3,6);

select * from AlunosCursos;
