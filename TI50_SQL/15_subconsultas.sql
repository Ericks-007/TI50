use Produto;

select * from Produtos;

select * from produtos order by vendaProd;

insert into Produtos (nomeProd, custoProd, vendaProd, fornecedorProd)
                    values
					('Anistia',900,990,'Camara'),
					('Baton',4,4.5,'Avon'),
					('Baton Mané',9,990,'Natura'),
					('Pastel De Feira',3,4.5,'Barraca do JAPA');

-- ################################################################

use Empresa;
select * from Funcionarios;
select * from Filhos;

-- C.R.U.D. 
-- C => Create = insert
-- R => Read = select
-- U => Update = update
-- D => Delete = delete

select * from Funcionarios where nomeFunc like '%Miamada%';
select idFunc from Funcionarios where nomeFunc like '%Miamada%';

select * from Filhos where idFunc = 4;

-- com subConsulta - subQuery
select * from Filhos where idFunc = 4;
select * from Filhos where idFunc = (4);

select * from Filhos where idFunc = (select idFunc from Funcionarios where nomeFunc like '%Miamada%');

select nomeFilho as 'filho',
       nascFilho as 'Nascimento do Filho',
	   'Miamada' as 'Funcionario'
	   from Filhos where idFunc =
							(select idFunc from Funcionarios where nomeFunc like '%Miamada%');

/*

*/
-- Outras utilizações
-- Produto mais caro da tabela produtos do banco de dados produto
use Produto;
select * from Produtos;

-- POG = Programacao Orientada a gambiarra
select top 3 * from Produtos order by vendaProd desc;

-- nao pog
select max(vendaprod) from produtos;-- 990
select * from Produtos where vendaProd = 990;

select * from Produtos where vendaProd = (990);

select * from Produtos where vendaProd = (select max(vendaprod) from produtos);

-- ///////////////////////////////////////////////////
-- update e delete com subquery
use Empresa;

select * from Funcionarios;-- 3 => Armando Guerra
select * from Filhos;

-- delete - excluir os filhos do armando guerra
select idFunc from Funcionarios where nomeFunc = 'Armando Guerra';
delete from Filhos where idFunc = 3;
delete from Filhos where idFunc = (3);
delete from Filhos where idFunc = 
                           (select idFunc from Funcionarios where nomeFunc = 'Armando Guerra');

-- update
use Empresa2;

select * from Funcionarios;
select * from Filhos;

update funcionarios set salarioFunc = salarioFunc * 1.2 where idfunc = 1 or idfunc = 3 or idfunc = 4 or idfunc = 5;

update funcionarios set salarioFunc = salarioFunc * 1.2 where idfunc in(1,3,4,5);
select distinct idFunc from Filhos;

update funcionarios set salarioFunc = salarioFunc * 1.2 where idfunc in(select distinct idFunc from Filhos);

-- ///////////////////////////////////////////////////////////////////////////////////
-- insert com subquery

create table FuncionariosBKP(
          idFunc int,
		  nomeFunc varchar(100),
		  cpfFunc char(11),
		  admissaoFunc date,
		  salarioFunc decimal(10,2)
);

select * from FuncionariosBKP;

-- insert into FuncionariosBKP values (select * from Funcionarios);
insert into FuncionariosBKP select * from Funcionarios;

--
create table massaDados ( id int identity(1,1) primary key,
						nome varchar(100),
						dataInc datetime default GETDATE());


insert into massaDados (nome) values ('Ava'),('Eva'),('Iva'),('Ova'),('Uva');


-- insert into massaDados values (select * from massaDados);
insert into massaDados (nome) select nome from massaDados;

select * from massaDados;
select count(id) from massaDados;

--subquery que nao esta na clausula where
select nomeFilho as 'filho',
       nascFilho as 'Nascimento do Filho',
	   (select idFunc from Funcionarios where nomeFunc like '%Miamada%') as 'Funcionario'
	   from Filhos where idFunc =
							(select idFunc from Funcionarios where nomeFunc like '%Miamada%');