

-- Exemplos de GROUP BY



-- Usa-se GROUP BY para contas com MAX(), SUM(), MIN(), COUNT(), AVG()

use db_cds;

select * from cliente;
select renda_cli from cliente;

select sum(renda_cli) from cliente;-- SUM() = soma
select count(renda_cli) from cliente;-- COUNT() = conta quantos tem
select avg(renda_cli) from cliente;-- AVG() = Media /10
select max(renda_cli) from cliente;-- MAX() = Maximo
select min(renda_cli) from cliente;-- MIN() = Minimo

select * 
        from pedido P
		join titulo_pedido TP on P.num_ped = TP.num_ped;

select p.num_ped as 'Pedido',
       qtd_cd as 'Quantidade de cds'
	   from pedido p
	   join titulo_pedido TP on P.num_ped = TP.num_ped;

select p.num_ped as 'Pedido',
       sum(qtd_cd) as 'Quantidade de cds'
	   from pedido p
	   join titulo_pedido TP on P.num_ped = TP.num_ped
	   group by p.num_ped;

select p.num_ped as 'Pedido',
       sum(qtd_cd) as 'Quantidade de cds'
	   from pedido p
	   join titulo_pedido TP on P.num_ped = TP.num_ped
	   group by p.num_ped
	   with rollup;

-- ??????????????????????????????????????????????????????//zdasdaw//
select p.num_ped as 'Pedido',
       qtd_cd as 'Quantidade de cds',
	   nome_cd as 'Titulo'
	   from pedido p
	   join titulo_pedido TP on P.num_ped = TP.num_ped
	   join titulo T on TP.cod_tit = T.cod_tit;

select p.num_ped as 'Pedido',
       sum(qtd_cd) as 'Quantidade de cds',
	   STRING_AGG(nome_cd,',') as 'Titulo'
	   from pedido p
	   join titulo_pedido TP on P.num_ped = TP.num_ped
	   join titulo T on TP.cod_tit = T.cod_tit
	   group by P.num_ped;

-- Exercícios com GROUP BY

-- 17) Quantos títulos possui cada artista no catálogo ?  count
select * from titulo;
select * from artista;

select count(t.nome_cd) as 'Catálogo',  
       nome_art as 'Artista'
       from titulo T
	   join titulo_artista TA on T.cod_tit = TA.cod_tit
	   join artista A on TA.cod_art = A.cod_art
	  group by nome_art;

-- 18) Quantos artistas possui cada Gravadora em nosso catálogo ? count
-- 19) Quantos artistas possui cada Gravadora em nosso catálogo e qual o total de artistas ? with rollup
-- 20) Liste todos os pedidos feitos no ano de 2002 e qual o total faturado no ano ? 
-- 21) Liste todos os funcionarios e quantos dependentes cada um deles possui. 


