

-- Exemplos de GROUP BY



-- Usa-se GROUP BY para contas com funções de agregação MAX(), SUM(), MIN(), COUNT(), AVG(), STRING_AGG(nome_cd,', ')

use db_cds;

select * from cliente;

select renda_cli from cliente;

select sum(renda_cli) from cliente; -- 16458,02
select count(renda_cli) from cliente; -- 10
select avg(renda_cli) from cliente; -- 16458,02/10 - media aritimetica
select max(renda_cli) from cliente; 
select min(renda_cli) from cliente; 

select * 
		from pedido p
		join titulo_pedido tp on p.num_ped = tp.num_ped; 

select p.num_ped as 'Pedido',
		qtd_cd as 'Quantidade de cds'
		from pedido p
		join titulo_pedido tp on p.num_ped = tp.num_ped; 

select	p.num_ped as 'Pedido',
		sum(qtd_cd) as 'Quantidade de cds'
		from pedido p
		join titulo_pedido tp on p.num_ped = tp.num_ped
		group by p.num_ped;
		
select p.num_ped as 'Pedido',
		sum(qtd_cd) as 'Quantidade de cds'
		from pedido p
		join titulo_pedido tp on p.num_ped = tp.num_ped
		group by p.num_ped
		with rollup;

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
select p.num_ped as 'Pedido',
		qtd_cd as 'Quantidade de cds',
		nome_cd as 'Titulo'
		from pedido p
		join titulo_pedido tp on p.num_ped = tp.num_ped
		join titulo t on tp.cod_tit = t.cod_tit; 

select p.num_ped as 'Pedido',
		sum(qtd_cd) as 'Quantidade de cds',
		STRING_AGG(nome_cd,', ') as 'Titulo'
		from pedido p
		join titulo_pedido tp on p.num_ped = tp.num_ped
		join titulo t on tp.cod_tit = t.cod_tit
		group by p.num_ped
		; 



-- Exercícios com GROUP BY

-- 17) Quantos títulos possui cada artista no catálogo ? 
select 
		nome_art as 'Artista',
		count(t.cod_tit) as 'Quantidade',
		STRING_AGG(nome_cd,', ') as 'Titulo'
		from titulo t
		left join titulo_artista ta on t.cod_tit = ta.cod_tit
		left join artista a on ta.cod_art = a.cod_art
		group by nome_art;


-- 18) Quantos artistas possui cada Gravadora em nosso catálogo ? 
select *
		from gravadora g
		join titulo t on g.cod_grav = t.cod_grav
		join titulo_artista ta on t.cod_tit = ta.cod_tit
		join artista a on ta.cod_art = a.cod_art;

select nome_grav as 'Gravadora',
		count(distinct nome_art) as 'Quantidade',
		STRING_AGG(nome_art,',') as 'Artista' -- para pesquisar por que nao aceitou o distinct
		from gravadora g
		join titulo t on g.cod_grav = t.cod_grav
		join titulo_artista ta on t.cod_tit = ta.cod_tit
		join artista a on ta.cod_art = a.cod_art
		group by nome_grav;


-- 19) Quantos artistas possui cada Gravadora em nosso catálogo e qual o total de artistas ? 
select nome_grav as 'Gravadora',
		count(distinct nome_art) as 'Quantidade'
		from gravadora g
		join titulo t on g.cod_grav = t.cod_grav
		join titulo_artista ta on t.cod_tit = ta.cod_tit
		join artista a on ta.cod_art = a.cod_art
		group by nome_grav
		with rollup;

select  case
			when nome_grav is not null then nome_grav 
			when nome_grav is null then 'Total'
		end as 'Gravadora',
		count(distinct nome_art) as 'Quantidade'
		from gravadora g
		join titulo t on g.cod_grav = t.cod_grav
		join titulo_artista ta on t.cod_tit = ta.cod_tit
		join artista a on ta.cod_art = a.cod_art
		group by nome_grav
		with rollup;		
-- 20) Liste todos os pedidos feitos no ano de 2002 e qual o total faturado no ano ? 
select num_ped as 'Pedido',
		val_ped as 'Valor' from pedido where year(data_ped) = '2002'
		;

select num_ped as 'Pedido',
		sum(val_ped) as 'Valor' from pedido where year(data_ped) = '2002'
		group by num_ped;

select num_ped as 'Pedido',
		sum(val_ped) as 'Valor' from pedido where year(data_ped) = '2002'
		group by num_ped
		with rollup;

select	case
			when num_ped is not null then cast(num_ped as varchar(10))  -- tipo numerico
			when num_ped is  null then  'Total' -- tipo string
		end as 'Pedido',
		sum(val_ped) as 'Valor' from pedido where year(data_ped) = '2002'
		group by num_ped
		with rollup;

select cast(num_ped as varchar(10)) as 'Pedido',
		val_ped as 'Valor' from pedido where year(data_ped) = '2002'
		union -- mesmo numero de campos E MESMO TIPO DE DADOS
select 'TOTAL' as 'Pedido',
		sum(val_ped) as 'Valor' from pedido where year(data_ped) = '2002'
		;

-- 21) Liste todos os funcionarios e quantos dependentes cada um deles possui. 
select	nome_func as 'Funcionario',
		count(nome_dep) as 'Qtde de Dependentes',
		STRING_AGG(nome_dep, ', ')  as 'Dependentes'
		from funcionario F
		left join dependente D on F.cod_func = D.cod_func
		GROUP BY nome_func;

