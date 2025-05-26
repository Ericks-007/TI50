use db_cds;


select * from pedido;
select * from funcionario;
select * from dependente;





-- Exercícios, Parte 2:



select * from funcionario where cod_func in(select distinct cod_func from dependente);-- func com filjho
select * from funcionario where cod_func not in(select distinct cod_func from dependente);-- func sem filjho


select * from pedido where cod_func in(
							select cod_func from funcionario where cod_func  not in(select distinct cod_func from dependente)
														) order by num_ped;

-- Exercícios com SUB SELECT

-- 09)Apresente todos os clientes Solteiros 
select * from cliente where cod_cli not in (select cod_cli from conjuge);

-- 10)Apresente todos os Clientes Casados 
select * from cliente where cod_cli  in (select cod_cli from conjuge);
   
-- ##########################   
select nome_cli as 'Cliente', 'Solteiro' as 'Estado civil' from cliente where cod_cli not in (select cod_cli from conjuge)  
union    
select nome_cli,'Casado' from cliente where cod_cli  in (select cod_cli from conjuge)
-- order by nome_cli -- em função do union retorna eero - usar apelido ou numero da coluna
order by Cliente
;    
    
-- 11)Apresente todas as categorias que estão sem CD 
select * from categoria where cod_cat not in(select distinct cod_cat from titulo);
    
-- 12)Apresente todas as gravadoras que nunca gravaram nenhum CD 
select * from gravadora where cod_grav not in(select distinct cod_grav from titulo);

-- 13)Apresente	apenas os funcionários que tem dependentes e que nunca atenderam a nenhum pedido

select * from funcionario
			where cod_func in(select distinct cod_func from dependente)
            and cod_func not in (select distinct cod_func from pedido);
 -- 14)Mostre todos os funcionários que atenderam a pedidos de clientes casados
  select * from funcionario where cod_func in(
												select distinct cod_func from pedido where cod_cli in 
																								(select cod_cli from conjuge)
																);
                                                                select * from pedido;
  select * from funcionario where cod_func in(
												select distinct cod_func from pedido where cod_cli in 
																								(select cod_cli from cliente where cod_cli in
																														(select cod_cli from conjuge)
                                                                                                )
																);  
-- 15)Apresente os dados dos clientes que possuem a maior renda 
select * from cliente where renda_cli = (select max(renda_cli)from cliente);

-- 16)Apresente os dados dos CDs Mais Caros 
select * from titulo where val_cd = (select max(val_cd)from titulo);


