create database Empresa2;
GO

use Empresa2;
GO

create table Funcionarios(
	idFunc int primary key identity(1,1),
	nomeFunc varchar(100) not null,
	cpfFunc char(11) not null unique,
	admissaoFunc date,
	salarioFunc decimal(10,2) not null
);
GO

-- insert valendo
insert into Funcionarios (nomeFunc,cpfFunc,admissaoFunc,salarioFunc)
						values
						('Kadu Kando','55599933311','2012-09-05',5650.00),
						('Takakara Nomuro','44433322211','2013-10-05',10980.00),
						('Armando Guerra','99988877766','2023-03-15',15654.23),
						('Komero Miamada','55544433322','2008-12-25',9321.65),
						('Mijaro Nomuro','11122233344','2012-09-15',8147.32);
GO

select * from Funcionarios;
GO
create table Filhos(
		idFilhos int primary key identity(1,1),
		nomeFilho varchar(100) not null,
		nascFilho date not null,
		idFunc int foreign key references Funcionarios(idFunc) not null
);
GO
insert into Filhos (nomeFilho,nascFilho,idFunc)
					values
					('Mane Kando','2014-09-15',1),
					('Kiki Kando','2015-10-15',1),
					('Milla Guerra','2019-05-21',3),
					('Maria Guerra','2020-11-02',3),
					('Wagner Miamada','2021-12-24',4),
					('Walter Miamada','2021-12-24',4),
					('Wallace Miamada','2021-12-24',4);

GO
insert into Filhos (nomeFilho,nascFilho,idFunc)
					values
					('Mane Gaga','2014-09-15',5),
					('Mane Maddona','2014-09-15',5);
GO
select * from Filhos;
GO

create table Conjuges(
	idConj int primary key identity(1,1),
	nomeConj varchar(100) not null,
	emailConj varchar(100) not null,
	idFunc int foreign key references Funcionarios(idFunc) not null unique
);
GO
insert into Conjuges (nomeConj,emailConj,idFunc)
					values
					('Maria Moreira','maria@moreira',1),
					('Mauro Mirante','mauro@mirante',4);
GO
select * from Conjuges;
GO
-- ===========================================
--select trazendo tudo - select simples
select * from Funcionarios

-- select escolhendo campos
select nomeFunc,salarioFunc from Funcionarios; 

-- juntando o * com nome de campos
-- o * deve vir primeiro
select *,nomeFunc,salarioFunc from Funcionarios; 

-- select repetindo campos
select nomeFunc,salarioFunc,salarioFunc from Funcionarios; 

-- campos com apelidos
select idFunc as 'Código do Funcionario', -- para apelido composto obrigatorio aspas
	  nomeFunc 'Nome do Funcionario', -- a instrução AS pode ser omitida - por boas praticas deve usar
	  salarioFunc as Salário, -- palavra simples pode omitir as aspas
	  admissaoFunc Admissao -- omiti o as e aspas
      from Funcionarios;