create database "Empresa";
GO

use Empresa;
GO

create table Funcionarios(
	idFunc int primary key identity(1,1),
	nomeFunc varchar(100) not null,
	cpfFunc char(11) not null unique,
	admissaoFunc date
);
GO
-- insert valendo
insert into Funcionarios (nomeFunc,cpfFunc,admissaoFunc)
						values
						('Kadu Kando','55599933311','2012-09-05'),
						('Takakara Nomuro','44433322211','2013-10-05'),
						('Armando Guerra','99988877766','2023-03-15'),
						('Komero Miamada','55544433322','2008-12-25'),
						('Mijaro Nomuro','11122233344','2012-09-15');
GO

select * from Funcionarios;

create table Filhos(
	idFilhos int primary key identity(1,1),
	nomeFilho varchar(100) not null,
	nascFilho date not null,
	idFunc int foreign key references Funcionarios(idFunc) not null 
);

 insert into Filhos (nomeFilho,nascFilho,idFunc)
						values
						('Mane','2015-09-15',1),
						('Kimi mamaro','2014-07-19',1),
						('Manoas','2017-10-01',3),
						('Saonam','2009-08-26',3),
						('Polimento','2017-06-01',3),
						('Mia Pomba','2018-04-10',4),
						('Mia Chibata','2018-04-10',4);

-- nao sera inserido pois nao tem um funcionario valido
insert into Filhos (nomeFilho,nascFilho,idFunc)
						values
						('Mane Loiro','2015-09-15',10),
						('Mane Moreno','2015-09-15',10);

-- sera inserido pois corrigi o funcionario
insert into Filhos (nomeFilho,nascFilho,idFunc)
						values
						('Mane Loiro','2015-09-15',5),
						('Mane Moreno','2015-09-15',5);
select * from Filhos
/*
nao executara pois tem representacao na tabela filho
A instrucao DELETE conflitou com a restrição do A instrução DELETE conflitou com a restrição do REFERENCE "FK__Filhos__idFunc__412EB0B6".
O conflito ocorreu no banco de dados "Empresa", tabela "dbo.Filhos", column 'idFunc'.
*/
delete from Funcionarios where idFunc=1;

create table Conjudes(
	idConj int primary key identity(1,1),
	nomeConj varchar(100) not null,
	emailConj varchar(100) not null,
	idFunc int foreign key references Funcionarios(idFunc) not null unique 
);

insert into Conjudes(nomeConj,emailConj,idFunc)
						values
						('Maria Mole','maria@mole',1),
						('Lioboa Plateominto','lioboa@plateominto',2),
						('Giovana Poste','giovana@poste',4);

select * from Conjudes;

/*nao sera inserido pois havera duplicidade na chave estrangeira e a chave estrangeira é um campo unico
o valor de chave duplicada é (1)*/
insert into Conjudes(nomeConj,emailConj,idFunc)
						values
						('Maria Chupaengole','maria@chupaengole',1),
