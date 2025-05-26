Create database auto_sell;
GO 

use auto_sell;
GO 

-- Tabela com os Estados do País
create table uf (
	uf_id		int identity(1,1),		-- PK da Tabela
	uf_nome		varchar(50),			-- Nome do Estado

constraint pk_uf primary key (uf_id)
);
GO 

create table cidades (
	cid_id		int identity(1,1),		-- PK da Tabela
	cid_nome	varchar(50),			-- Nome da Cidade
	uf_id		int,					-- FK que liga o registro à PK da tabela UF

constraint pk_cid primary key (cid_id),
constraint fk_cid_uf foreign key (uf_id) references uf(uf_id)
);
GO 

create table montadoras (

	mon_id		int identity(1,1),		-- PK da Tabela
	mon_nome	varchar(50),			-- Nome da Montadora (Fábrica)

constraint pk_mon primary key (mon_id)
);
GO 


create table modelos (

	mod_id		int identity(1,1),		-- PK da Tabela
	mod_nome	varchar(50),			-- Nome do Modelo do Carro
	mon_id		int,					-- FK que liga o registro à PK da tabela Montadoras

constraint pk_mod primary key (mod_id),
constraint fk_mod_mon foreign key (mon_id) references montadoras(mon_id)
);
GO 

create table carros (

	car_id			int identity(1,1),	-- PK da Tabela
	car_placa		varchar(7),			-- Placa do Carro
	car_ano			int,				-- Ano do Carro
	car_custo		dec(10,2),			-- Valor de custo, valor pago pelo carro
	car_venda		dec(10,2),			-- Valor de Venda do Carro (O valor é NULL até o momento da venda do auto)
	car_status		char(1),			-- 'R' Revisão  'V' Vendido   'D' À venda
	car_combustivel char(1),			-- 'F' Flex     'G' Gasolina  'D' Diesel   'A' Àlcool   'N' GNV
	mod_id			int,				-- FK que liga o registro à PK da tabela Modelos

constraint pk_car primary key (car_id),
constraint fk_car_mod foreign key (mod_id) references modelos(mod_id)

);
GO 


/*
OBS:

	Regras de Negócio da Revenda:

	1) O carro, enquanto não for vendido, possui o campo car_venda Nulo.
	2) O carro, no status 'R' (Revisão), ainda não foi vendido e também não está no estoque à venda.
	3) Cliente que tenha vendido ou comprado algum carro, caso não tenha nenhum problema no SERASA, possui o
	status 'S' (Sem restrições). Caso contrário, 'C' (Com restrições)
*/

create table clientes (

	cli_id		int identity(1,1),		-- PK da Tabela
	cli_cpf		varchar (14),			-- CPF do Cliente
	cli_nome	varchar(50),			-- Nome do cliente
	cli_status	char(1),				-- 'C' Com Restrição   'S' Sem Restrição
	cid_id		int,					-- FK que liga o registro à PK da tabela Cidades
	uf_id		int,					-- FK que liga o registro à PK da tabela UF (PS: Somente para fins Educacionais)

constraint pk_clientes primary key (cli_id),
constraint fk_cli_cid foreign key (cid_id) references cidades(cid_id),
constraint fk_cli_uf foreign key (uf_id) references uf(uf_id),
constraint un_cli_cpf unique (cli_cpf)
);
GO 

create table vendedores (

	ven_id		int identity(1,1),		-- PK da Tabela
	ven_nome	varchar(50),				-- Nome do Vendedor

constraint pk_vendedores primary key (ven_id)
);
GO 


create table transacoes (

	tran_id		int identity(1,1),		-- PK da Tabela
	tran_tipo	char(1),				-- Tipo de Transação --> 'C' Compra     'V' Venda
	cli_id		int,					-- FK que liga o registro ao PK da Tabela Clientes
	car_id		int,					-- FK que liga o registro ao PK da Tabela Carros
	ven_id		int,					-- FK que liga o registro ao PK da Tabela Vendedores
	

constraint pk_transacoes primary key (tran_id),
constraint fk_tran_cli foreign key (cli_id) references clientes(cli_id),
constraint fk_tran_car foreign key (car_id) references carros(car_id),
constraint fk_tran_ven foreign key (ven_id) references vendedores(ven_id)
);
GO 





-- Insert's

insert uf values ( null , 'São Paulo'),
( null , 'Rio de Janeiro'),
( null , 'Paraná'),
( null , 'Minas Gerais'),
( null , 'Rio Grande do Sul'),
( null , 'Brasília');
GO 

insert cidades values ( null , 'São Paulo', 1),
( null , 'Santo André', 1),
( null , 'Curitiba', 3),
( null , 'Petrópolis', 2),
( null , 'Diadema', 1),
( null , 'São Caetano', 1),
( null , 'Santos', 1);
GO 

insert into montadoras values ( null , 'Ford'),
( null , 'Ferrari'),
( null , 'Fiat'),
( null , 'GM'),
( null , 'Volks'),
( null , 'Jaguar');
GO 

insert into modelos values ( null , 'Ecosport' , 1),
( null , 'Fiesta' , 1),
( null , 'KA' , 1),
( null , 'Spider' , 2),
( null , 'Uno' , 3),
( null , 'Stilo' , 3),
( null , 'Corsa' , 4),
( null , 'Celta' , 4),
( null , 'Gol' , 5),
( null , 'Passat' , 5),
( null , 'Bora' , 5),
( null , 'Polo' , 5);
GO 

insert carros values ( null , 'WAC7135' , 2003 , '42000' , null , 'r' , 'f' , 1),
( null , 'WAZ1751' , 2007 , '40000' , null , 'd' , 'f' , 2),
( null , 'QSC9543' , 2005 , '12000' , '12500' , 'v' , 'g' , 2),
( null , 'RTD5732' , 2006 , '20000' , null , 'd' , 'g' , 3),
( null , 'PDT2002' , 2006 , '542000' , null , 'd' , 'g' , 4),
( null , 'BVC9813' , 2006 , '23000' , '26500' , 'v' , 'a' , 8),
( null , 'AAC6541' , 2000 , '22000' , '25500' , 'v' , 'f' , 8),
( null , 'YGJ9856' , 2006 , '62000' , null , 'r' , 'f' , 12),
( null , 'FNH7988' , 2007 , '75000' , null , 'd' , 'f' , 11),
( null , 'SDF3517' , 1972 , '1000' , '2500' , 'v' , 'g' , 10),
( null , 'GGG1687' , 2002 , '10250' , null , 'd' , 'g' , 9),
( null , 'RTD3274' , 2000 , '12000' , null , 'd' , 'g' , 9),
( null , 'YKK6548' , 2000 , '10000' , '12500' , 'v' , 'a' , 9),
( null , 'UUU4534' , 2000 , '13000' , '13500' , 'v' , 'f' , 9);
GO 

insert clientes values ( null , '123.123.456-66','Juca Kfouri','s',1,1),
( null , '426.544.323-58','Daniele Winits','c',2,1),
( null , '719.458.234-77','Jô Soares','s',3,3),
( null , '714.523.417-53','Kofi Anan','s',3,3),
( null , '348.127.899-72','Barak Hussein Obama','s',1,1),
( null , '254.333.842-77','Ricardo Pereira','c',1,1);
GO 

insert vendedores values ( null , 'Percival'),
( null , 'Loureiro'),
( null , 'Lindomar'),
( null , 'Juliano'),
( null , 'Castilho'),
( null , 'Henrique'),
( null , 'Gabriel');
GO 

insert transacoes values ( null , 'v',1,3,1),
( null , 'v',3,7,2),
( null , 'v',3,6,2),
( null , 'c',2,3,1),
( null , 'c',2,7,3),
( null , 'c',6,6,3),
( null , 'c',4,8,3),
( null , 'c',4,9,3),
( null , 'c',4,10,3),
( null , 'c',2,11,4),
( null , 'c',3,12,4),
( null , 'c',6,13,4),
( null , 'c',3,1,6),
( null , 'c',3,2,6),
( null , 'c',3,4,6),
( null , 'c',3,5,6),
( null , 'c',3,14,6),
( null , 'c',6,10,3),
( null , 'c',6,13,3),
( null , 'c',6,14,3);
GO 


SELECT * FROM UF;
SELECT * FROM CIDADES;
SELECT * FROM MONTADORAS;
SELECT * FROM MODELOS;
SELECT * FROM CARROS;
SELECT * FROM CLIENTES;
SELECT * FROM VENDEDORES;
SELECT * FROM TRANSACOES;
GO 



/*
OBS:

	Regras de Negócio da Revenda:

	1) O carro, enquanto não for vendido, possui o campo car_venda Nulo.
	2) O carro, no status 'R' (Revisão), ainda não foi vendido e também não está no estoque à venda.
	3) Cliente que tenha vendido ou comprado algum carro, caso não tenha nenhum problema no SERASA, possui o
	status 'S' (Sem restrições). Caso contrário, 'C' (Com restrições)
*/


-- Prepare as seguintes consultas:

-- 01)	Qtos carros existem cadastrados no sistema?

-- 02)	Qtos carros no estoque estão à venda?

-- 03)	Qual o valor (e somente o valor) do carro mais caro que já compramos ?

-- 04)	Liste todos os carros no sistema, trazendo o Modelo e o ano do mesmo.

-- 05)	Liste todos os carros à venda no sistema, trazendo o Modelo, ano e o custo apenas

-- 06)	Qual o modelo e valor do carro mais caro que nós já compramos ?

-- 07) Qtos clientes do estado de São Paulo estão cadastrados no sistema? PS: Monte a query de busca pelo nome do estado; e não pelo ID do estado.










-- Desafio 1:

-- Execute o select abaixo:

select * from carros;

-- Note que existem 14 carros cadastrados no sistema.

select * from carros where car_venda is not null;

-- Note agora que existem 6 carros que foram vendidos.

select * from transacoes where tran_tipo = 'v';

-- Embora na tabela carros exista a informação que 6 carros foram vendidos, 
-- na tabela de transações, constam apenas 3 transações de venda.
-- Portanto, há um erro na consistência dos dados.

-- 08) Liste os carros que não possuem transação de venda.

-- 09) Corrija a tabela de transações, definindo a venda dos autos no sistema.
-- Adote como padrão: O vendedor responsável pela venda desses carros foi o Lindomar;
-- e o cliente responsável pela compra dos autos foi o Ricardo Pereira.
-- PS: Obrigatoriamente, serão 3 registro inseridos na tabela.





-- 10) Qual o modelo, montadora e valor do carro mais caro que nós já compramos?
                                                         

