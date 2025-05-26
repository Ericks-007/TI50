use db_cds;


select * from pedido;
select * from funcionario;
select * from dependente;
select * from cliente;
select * from conjuge;





-- Exercícios, Parte 2:





-- Exercícios com SUB SELECT
-- 09)Apresente todos os clientes Solteiros
select * from cliente where cod_cli not in (select cod_cli from conjuge);

select nome_cli as 'Cliente',
       'Solteiro' as 'Estado Civil'
	   from cliente where cod_cli not in 
	                              (select cod_cli from conjuge);


-- 10)Apresente todos os Clientes Casados
select * from cliente where cod_cli in (select cod_cli from conjuge);

select nome_cli as 'Cliente',
       'Casado' as 'Estado Civil'
	   from cliente where cod_cli in 
	                              (select cod_cli from conjuge);


--######################################################
select nome_cli as 'Cliente',
       'Solteiro' as 'Estado Civil'
	   from cliente where cod_cli not in 
	                              (select cod_cli from conjuge)
union
select nome_cli as 'Cliente',
       'Casado' as 'Estado Civil'
	   from cliente where cod_cli in 
	                              (select cod_cli from conjuge)
								  
			ORDER BY 2;


-- Para unir mais de uma consulta elas devem ter o mesmo numero de campos
-- E esses campos devem ter o mesmo tipo de dados nas duas consultas
-- ORDER by depois da ultima consulta

-- 11)Apresente todas as categorias que estão sem CD     
select * from categoria where cod_cat not in(select cod_cat from titulo);


-- 12)Apresente todas as gravadoras que nunca gravaram nenhum CD 
select cod_grav from titulo;--1,2,1,2,3,3,2,1,2,1
select distinct cod_grav from titulo;-- 1,2,3 distinct serve pra mandar so 1 de vez um monte

select * from gravadora where cod_grav not in(select distinct cod_grav from titulo);

select nome_grav as 'Gravadora que gravou'
                     from gravadora where cod_grav 
                          in(select distinct cod_grav from titulo);

select nome_grav as 'Gravadora que não gravou'
                        from gravadora where cod_grav 
                             not in(select distinct cod_grav from titulo);


-- 13)Apresente	apenas os funcionários que tem dependentes e que nunca atenderam a nenhum pedido
select * from funcionario
			where cod_func in(select distinct cod_func from dependente)
            and cod_func not in (select distinct cod_func from pedido);

select nome_func as 'Funcionario' from funcionario
			where cod_func in(select distinct cod_func from dependente)
            and cod_func not in (select distinct cod_func from pedido);

-- 14)Mostre todos os funcionários que atenderam a pedidos de clientes casados
select * from funcionario where cod_func 
                           in(select distinct cod_func from pedido where cod_cli 
                               in (select cod_cli from conjuge)
							                                  );


-- 15)Apresente os dados dos clientes que possuem a maior renda 
select top 1 * from cliente order by renda_cli desc;


select * from cliente where renda_cli = (select max(renda_cli)from cliente);


-- 16)Apresente os dados dos CDs Mais Caros 
select * from titulo where val_cd = (select max(val_cd)from titulo);
