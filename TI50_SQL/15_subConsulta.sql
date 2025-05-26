use Produto;


select * from produtos;

select * from produtos order by vendaProd;

insert into produtos (nomeProd,custoProd,vendaProd,fornecedorProd)
					values
					('anistia',900,990,'Camara'),
					('BATON',4,4.5,'AVON'),
					('Baton Mané',9,990,'Natura'),
					('Pastel de Feira',3,4.5,'Barraca da Lu');

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

use Empresa;
select * from Funcionarios;
select * from Filhos;

-- CRUD Create=> insert
-- Read => select
-- Update => update
-- Delete => Delete

select * from Funcionarios where nomeFunc like '%Miamada%';
select idFunc from Funcionarios where nomeFunc like '%Miamada%';

select * from filhos where idFunc = 4;

-- com subConsulta - subQuery
select * from filhos where idFunc = 4;
select * from filhos where idFunc = (4);

select * from filhos where idFunc = (select idFunc from Funcionarios where nomeFunc like '%Miamada%');

select * from filhos where idFunc = 
						(select idFunc from Funcionarios where nomeFunc like '%Miamada%');

select nomeFilho as 'Filho',
		nascFilho as 'Nascimento',
		'Miamada' as 'Funcionario'
		from filhos where idFunc = 
						(select idFunc from Funcionarios where nomeFunc like '%Miamada%');

/*
No exemplo acima temos uma subquery ou uma subconsulta
ou seja : um select dentro de outra query(select, update, delete, insert)

Normalmente dentro da clausula WHERE como condição de filtragem da consulta.

Note que o subselect se executado sozinho, ele traz um resultado semelhante ao que seria
escrito dentro da clausula WHERE

select idFunc from Funcionarios where nomeFunc like '%Miamada%';
TRAZ O RESULTADO 4

FAZENDO O SUBSELECT
select * from filhos where idFunc = 
						(select idFunc from Funcionarios where nomeFunc like '%Miamada%');

SERIA O MESMO QUE ESCREVER
select * from filhos where idFunc = (4);
*/

-- OUTRAS UTILIZAÇÕES

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- PRODUTO MAIS CARO DA TABELA PRODUTOS DO BANCO DE DADOS PRODUTO
USE Produto;
select * from produtos;

-- POG - Programação Orientada à Gambiarra
select top 3 * from produtos order by vendaProd desc;

-- não pog
select max(vendaProd)from produtos;-- 990
select * from produtos where vendaProd = 990;

select * from produtos where vendaProd = (990);

select * from produtos where vendaProd = (select max(vendaProd)from produtos);

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- update e delete com subquery
 use Empresa;



 select * from funcionarios;-- 3 => Armando Guerra

 select * from Filhos;

 -- delete - excluir os filhos do Armando Guerra
 -- sempre na clausula WHERE
 select idFunc from funcionarios where nomeFunc = 'Armando Guerra';--3
 delete from Filhos where idFunc = 3;
 delete from Filhos where idFunc = (3);
 delete from Filhos where idFunc = 
						(select idFunc from funcionarios where nomeFunc = 'Armando Guerra');

-- update
use Empresa2;

select * from Funcionarios;
select * from filhos;

update funcionarios set salarioFunc = salarioFunc * 1.2 where idFunc = 1 or idFunc = 3 or idFunc = 4 or idFunc = 5;

update funcionarios set salarioFunc = salarioFunc * 1.2 where idFunc in(1,3,4,5);
select distinct idFunc from Filhos; 

update funcionarios set salarioFunc = salarioFunc * 1.2 where idFunc in(select distinct idFunc from Filhos);

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- insert com subquery
-- fazer backup de uma tabela

CREATE TABLE FuncionariosBKP (
		idFunc int,
		nomeFunc varchar(100),
		cpfFunc char(11),
		admissaoFunc date,
		salarioFunc decimal(10,2)
	)  ;

select * from FuncionariosBKP;

-- insert into FuncionariosBKP values (select * from Funcionarios)
insert into FuncionariosBKP select * from Funcionarios;

-- fazer massa de dados para teste de performance
create table massaDados ( id int identity(1,1) primary key,
							nome varchar(100),
							dataInc datetime default GETDATE());

insert into massaDados (nome) values ('Ava'),('Eva'),('Ivo'),('Ovo'),('Uva');


-- insert into massaDados values (select * from massaDados);
-- insert into massaDados (nome) values ( select nome from massaDados);
insert into massaDados (nome) select nome from massaDados;

select * from massaDados;

select count(id) from massaDados;

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- subquery que nao esta na clausula where - está na relação de campos

select nomeFilho as 'Filho',
		nascFilho as 'Nascimento',
		(select nomeFunc from Funcionarios where nomeFunc like '%Miamada%') as 'Funcionario'
		from filhos where idFunc = 
						(select idFunc from Funcionarios where nomeFunc like '%Miamada%');

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- maior parte das querys resolvidas com subquery pode ser resolvida com JOIN
select nomeFilho as 'Filho',
		nascFilho as 'Nascimento',
		nomeFunc as 'Funcionario'
		from funcionarios f
		join Filhos fi on f.idFunc = fi.idFunc
		where nomeFunc like '%Miamada%';	