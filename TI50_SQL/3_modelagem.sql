create database Empresa;
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
