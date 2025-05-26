use Empresa

select * from Filhos;

select * from Funcionarios;
select * from Conjudes;
-- #######################################
-- CROSS JOIN
-- juntar tabelas numa so consulta
--1 forma cruzar as tabelas
select * from Funcionarios cross join Conjudes; 

-- ########################################
-- INNER JOIN
-- juntar tabelas numa so consulta de acordo com uma condição de associação
select * from Funcionarios inner join Conjudes on Funcionarios.idFunc = Conjudes.idFunc;

select * from Conjudes inner join Funcionarios on Funcionarios.idFunc = Conjudes.idFunc;

select * 
       from Funcionarios 
	   inner join Conjudes on Funcionarios.idFunc = Conjudes.idFunc;

-- ########################################
-- usando apelido para a tabela
-- (as) declara o apelido
select * 
       from Funcionarios as F
	   inner join Conjudes as C on F.idFunc = C.idFunc;

-- ########################################
-- e a clausula inner pode ser ometida pq ja tem uma declaração ele ja identifica automaticamente
-- resumindo muita Coisa (F.idFunc) o F. foi o apelido dado aos funcionarios acessando essa parte 
-- temos acesso a tabela Funcionarios assim podendo trocar o nome das tabelas por exemplo
-- idFunc virar Matricula 👌😎
select
       F.idFunc as 'Matricula',
	   F.nomeFunc as 'Nome do Funcionario',
	   C.nomeConj as 'Nome do Conjuge',
	   C.emailConj as 'Email Conjuge'
       from Funcionarios as F
       join Conjudes as C on F.idFunc = C.idFunc;

-- Se inverter a ordem das tabelas na consulta será invertido no resultado
select
       F.idFunc as 'Matricula',
	   F.nomeFunc as 'Nome do Funcionario',
	   C.nomeConj as 'Nome do Conjuge',
	   C.emailConj as 'Email Conjuge'
       from Conjudes as C
       join Funcionarios as F on F.idFunc = C.idFunc;
-- ########################################
-- left OUTER join
-- juntar tabelas numa so consulta de acordo com uma condição de associação porem trara todos os registros
--da tabela da esquerda independente da condição associada
-- Trazer todos os FUNCIONARIOS - se for casado trazer o Conjude

select * 
        from Funcionarios F
		left outer join Conjudes C on F.idFunc = C.idFunc;

select * 
        from Conjudes C 
		left outer join Funcionarios F on F.idFunc = C.idFunc;

-- a clausula OUTER pode ser omitida
select F.nomeFunc as 'Funcionario',
       C.nomeConj as 'Conjude'
	   from Funcionarios F
	   left join Conjudes C on F.idFunc = C.idFunc;

select F.nomeFunc as 'Funcionario',
       case
	       when C.nomeConj is not null then C.nomeConj
		   when C.nomeConj is null then 'Solteiro'
	   end as 'Conjuge'
	   from Funcionarios F
	   left join Conjudes C on F.idFunc = C.idFunc;

-- #####################################################
--RIGHT OUTER JOIN
-- juntar tabelas numa so consulta de acordo com uma condicao de associação
-- porem trara todos os registros da tabela da DIREITA independente da condicao de associaca
select *
        FROM Conjudes C
		right join Funcionarios F ON C.idFunc = F.idFunc;


select 
        nomeConj as 'Nome do Conjuge',
		emailCOnj as 'Email do Conjuge',
		F.idFunc as 'Matricula',
		nomeDunc as 'Nome do Funcionario'
        FROM Conjudes C
		right join Funcionarios F ON C.idFunc = F.idFunc;



select 
        case
		   when nomeConj is not null then nomeConj
		   when nomeConj is null then 'Solteiro'
		end
		as 'Nome do Conjuge',
		case
		   when emailConj is not null then emailConj
		   when emailConj is null then '-----------'
        end as 'Email do Conjuge',
		F.idFunc as 'Matricula',
		nomeFunc as 'Nome do Funcionario'
        FROM Conjudes C
		right join Funcionarios F ON C.idFunc = F.idFunc;

-- #######################################################################
-- FULL JOIN 




-- COlocaremos a tabela Funcionarios a Esquerda e a tabela FILHOS a direita
-- 1° somente funcionarios com filhos - JOIN
-- retornara somente registro DENTRO da condição de associação
select * from Funcionarios F JOIN Filhos X on F.idFunc = X.idFunc;

-- 2° Todos os funcionarios e os filhos se tiverem- LEFT JOIN
select * from Funcionarios F left JOIN Filhos X on F.idFunc = X.idFunc;

-- 3° Todos os filhos e os funcionarios se tiverem- RIGHT JOIN
select * from Funcionarios F right JOIN Filhos X on F.idFunc = X.idFunc;

-- 4° Todos os filhos e todos os funcionarios e associados com filhos - left e right join juntos ➡️ FULL JOIN
select * from Funcionarios F full JOIN Filhos X on F.idFunc = X.idFunc;

-- ########################################################################
-- MySQL nao tem FULL JOIN
--Resolver com união de consultas

select * from Funcionarios F LEFT JOIN Filhos X on F.idFunc = X.idFunc
union
select * from Funcionarios F RIGHT JOIN Filhos X on F.idFunc = X.idFunc;

-- #####################################################################
-- Consulta juntando mais de 3 tabela

select *
      from Funcionarios F
	  left join Conjudes C on F.idFunc = C.idFunc
	  left join Filhos X on F.idFunc = X.idFunc;


select F.idFunc as  'Matricula do Funcionario',
       nomeFunc as 'Funcionarios',
	   nomeCOnj as 'Conjuges',
	   nomeFilho as 'Filhos'
      from Funcionarios F
	  left join Conjudes C on F.idFunc = C.idFunc
	  left join Filhos X on F.idFunc = X.idFunc;


select F.idFunc as  'Matricula do Funcionario',
       nomeFunc as 'Funcionarios',

	   case
	      when nomeCOnj is not null then C.nomeConj
		  when nomeCOnj is null then 'Solteiro'
	   end as 'Conjuges',
       
	   case
	      when nomeFilho is not null then X.nomeFilho
		  when nomeFilho is null then '----------------'
	   end as 'Filhos'

      from Funcionarios F
	  left join Conjudes C on F.idFunc = C.idFunc
	  left join Filhos X on F.idFunc = X.idFunc;