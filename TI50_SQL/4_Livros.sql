create database Biblioteca;
GO
use Biblioteca;
create table Autor(
			idAut int primary key identity(1,1),
			nomeAut varchar(100) not null
);
GO

insert into Autor (nomeAut)
            values
			('Machado de Assis'),
			('Rita Lee'),
			('João Gomes'),
			('Pedro Alvares'),
			('Bob Marley');

GO
select * from Autor;
GO


create table Livros(
			idLivro int primary key identity(1,1),
			titLivro varchar(200) not null,
			anoLivro date,
			isbnLivro char(13) not null unique,
			idAut int foreign key references Autor(idAut) not null 
);
GO


insert into Livros(titLivro,anoLivro,isbnLivro,idAut)
            values
			('Contos de Machado de Assis','1882-03-15','1234567890123',1),
			('A coisas da vida','2008-08-06','1012131415161',5),
			('As Maconhas nos Rodeia','1997-11-09','3210987654321',5),
			('Sofrencia de Joao','2024-05-05','1615141312110',3),
			('Biografia Rita Lee','2000-06-01','2134567890123',2),
			('Como fazer uma colonia','1500-11-07','3124567890123',4),
			('Como fazer uma colonia 2.0','1501-12-24','4123567890123',4);
GO
select * from Livros;
GO
create table Alunos(
             idAluno int primary key identity(1,1),
			 nomeAluno varchar(100) not null,
			 emailAluno varchar(100) not null,
			 nascAluno date not null
);
GO

insert into Alunos (nomeAluno,emailAluno,nascAluno)
			values
			('Mario AqueleQue','mario@aqueleque','2001-09-11'),
			('Pablo Escobar','pablo@escobar','1998-12-02'),
			('Muhammed Ali','muhammed@ali','2000-06-04');
GO
select * from Alunos;
GO
create table Empres(
			 idEmpres int primary key identity(1,1),
			 datEmpres date not null,
			 datPrev date not null,
			 dataDevo date not null,
			 idAluno int foreign key references Alunos(idAluno) not null,
			 idLivro int foreign key references Livros(idLivro) not null 
);
GO
insert into Empres (datEmpres,datPrev,dataDevo,idAluno,idLivro)
			 values
			 ('2024-07-11','2025-01-01','2025-02-02',1,1),
			 ('2025-01-24','2025-02-02','2025-03-25',3,6),
			 ('2025-01-24','2025-02-02','2025-03-25',3,7),
			 ('2025-02-12','2025-04-25','2025-06-29',2,3),
			 ('2025-02-11','2025-04-26','2025-06-30',2,4);
GO
select * from Empres;
GO
