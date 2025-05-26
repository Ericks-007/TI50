

-- ************* EXERCÍCIO *************


-- 	1) CRIAR UM DATABASE PRODUTO
create database Produto;

-- 	2) ACESSAR O DATABASE
use Produto;    
-- 	3) CRIAR UMA TABELA PRODUTOS COM OS CAMPOS ABAIXO:
/*    
		COD			INT
		NOME		VARCHAR(50)
		CUSTO		DEC(10,2)
		VENDA		DEC(10,2)
		FORNECEDOR	VARCHAR(50)
*/
create table Produtos(
					idProd int primary key identity(1,1),
					nomeProd varchar(100) not null,
					custoProd decimal(10,2),
					vendaProd decimal(10,2),
					fornecedorProd varchar(100)
					);

-- 4) INSERIR OS 13 PRODUTOS DE INFORMATICA ABAIXO:

INSERT INTO PRODUTOS
(nomeProd,custoProd,vendaProd,fornecedorProd)
VALUES 
('TECLADO', 12, 18, 'JENIUS'),
( 'MOUSE', 6, 7, 'CLONE'),
( 'HD', 200, 240, 'QUANTUM'),
( 'MOUSEPAD', 3, 4.5, 'GENERICO'),
( 'PEN DRIVE', 50, 65, 'SONY'),
( 'TECLADO', 21, 35, 'CLONE'),
( 'MOUSE', 79, 140, 'MICROSOFT'),
( 'HD', 290, 359, 'IBM'),
( 'MOUSEPAD', 4, 23, 'CLONE'),
( 'PEN DRIVE', 120, 200, 'IBM'),
( 'USB PEN DRIVE', 120, 200, 'KINGSTON'),
( 'IPOD', 920, 990, 'APPLE'),
( 'MOUSE USB', 5, 10, 'MICROSOFT');




-- 	CRIE AS CONSULTAS ABAIXO:

-- 		01) TODOS
select * from Produtos;

-- 		02) CODIGO 1, 2 OU 3
select * from produtos where idProd < 4;
select * from produtos where idProd <= 3;
select * from produtos where idProd < 3 OR idProd = 3;

select * from produtos where idProd =1 OR idProd = 2  OR idProd = 3;
select * from produtos where idProd IN(1,2,3);

select * from produtos where idProd >=1 AND idProd <=3;
select * from produtos where idProd BETWEEN 1 AND 3;-- inclui 0 1 e o 3


-- 		03) DO FORNECEDOR 'QUANTUM' 
SELECT * FROM Produtos WHERE fornecedorProd ='QUANTUM';

SELECT * FROM Produtos WHERE fornecedorProd LIKE 'QUANTUM';-- utilizar o igual

SELECT * FROM Produtos WHERE fornecedorProd LIKE '%QUANTUM%';-- contenha quantum
SELECT * FROM Produtos WHERE fornecedorProd LIKE '%ANT%';-- contenha ant
SELECT * FROM Produtos WHERE fornecedorProd LIKE 'QUAN%';-- começa com quan
SELECT * FROM Produtos WHERE fornecedorProd LIKE '%tum';-- termina com tun


-- 		04) CODIGO DIFERENTE DE 2, 6, 9
SELECT * FROM Produtos WHERE idProd <> 2 AND idProd <> 6 AND idProd<>9;
SELECT * FROM produtos WHERE idProd NOT IN(2,6,9);
-- 
-- SELECT * FROM Produtos WHERE (idProd <> 2 AND idProd <> 6 AND idProd<>9);
-- verificabdo o 2
--SELECT * FROM Produtos WHERE F AND V AND V;
-- verificabdo o 5
--SELECT * FROM Produtos WHERE V AND V AND V;



-- 		05) PRECO DE VENDA ENTRE 10 E 30
-- INCLUSIVO
SELECT * FROM Produtos WHERE vendaProd >=10 AND vendaProd <=30;
SELECT * FROM Produtos WHERE vendaProd BETWEEN 10 AND 30;

-- NÃO INCLUSIVO
SELECT * FROM Produtos WHERE vendaProd >10 AND vendaProd <30;
-- between é inclusivo e não atende esta questao

--  PRECO DE VENDA NÃO SEJA ENTRE 10 E 30
-- NÃO INCLUSIVO
SELECT * FROM Produtos WHERE vendaProd < 10 OR vendaProd > 30;
SELECT * FROM Produtos WHERE vendaProd NOT BETWEEN 10 AND 30;-- EXCLUI O 10 E O 30

-- INCLUSIVO
SELECT * FROM Produtos WHERE vendaProd <= 10 OR vendaProd >= 30;
-- NOT between é EXclusivo e não atende esta questao


-- 		06) PRECO DE CUSTO MENOR QUE 10
SELECT * FROM Produtos WHERE custoProd < 10;

-- 		07) NOME COMEÇADO POR CONSOANTE
SELECT * FROM Produtos WHERE nomeProd LIKE 'b%' OR nomeProd  LIKE 'c%' OR 
							nomeProd   LIKE 'd%' OR
							nomeProd   LIKE 'f%' OR
							nomeProd   LIKE 'g%' OR
							nomeProd   LIKE 'h%' OR
							nomeProd   LIKE 'j%' OR
							nomeProd   LIKE 'k%' OR
							nomeProd   LIKE 'l%' OR
							nomeProd   LIKE 'm%' OR
							nomeProd   LIKE 'n%' OR
							nomeProd   LIKE 'p%' OR
							nomeProd   LIKE 'q%' OR
							nomeProd   LIKE 'r%' OR
							nomeProd   LIKE 's%' OR
							nomeProd   LIKE 't%' OR
							nomeProd   LIKE 'v%' OR
							nomeProd   LIKE 'w%' OR
							nomeProd   LIKE 'x%' OR
							nomeProd   LIKE 'y%' OR
							nomeProd   LIKE 'z%' ;
-- PELA NEGAÇÃO -  OS QUE NÃO COMEÇAM COM VOGAL
SELECT* FROM Produtos WHERE nomeProd NOT LIKE 'a%' AND
							nomeProd NOT LIKE 'e%' AND
							nomeProd NOT LIKE 'i%' AND
							nomeProd NOT LIKE 'o%' AND
							nomeProd NOT LIKE 'u%' ;




-- 		08) NOME QUE CONTENHA O TEXTO 'MOUSE'
SELECT * FROM Produtos WHERE nomeProd like '%MOUSE%';


-- 		09) NOME INICIADO COM 'TECLADO'	
SELECT * FROM Produtos WHERE nomeProd like 'TECLADO%';

-- 		10) LUCRO MAIOR QUE 20%
-- SELECT	nomeProd as 'Produto' , vendaProd as 'Preço de Venda', custoProd as 'Preço de Custo' FROM Produtos;
SELECT	nomeProd as 'Produto' , 
		vendaProd as 'Preço de Venda', 
		custoProd as 'Preço de Custo' ,
		(vendaProd - custoProd) as 'Lucro Liquido',
		custoProd * 1.20 as 'Projeção de lucro de 20%',
		custoProd * 1.40 as 'Projeção de lucro de 40%'
		FROM Produtos;

SELECT	nomeProd as 'Produto' , 
		vendaProd as 'Preço de Venda', 
		custoProd as 'Preço de Custo' ,
		(vendaProd - custoProd) as 'Lucro Liquido',
		custoProd * 1.20 as 'Projeção de lucro de 20%',
		custoProd * 1.40 as 'Projeção de lucro de 40%'
		FROM Produtos
		WHERE vendaProd > (custoProd * 1.20);


-- 		11) LUCRO MENOR QUE 40%
SELECT	nomeProd as 'Produto' , 
		vendaProd as 'Preço de Venda', 
		custoProd as 'Preço de Custo' ,
		(vendaProd - custoProd) as 'Lucro Liquido',
		custoProd * 1.20 as 'Projeção de lucro de 20%',
		custoProd * 1.40 as 'Projeção de lucro de 40%'
		FROM Produtos
		WHERE vendaProd < (custoProd * 1.40);
-- 		12) LUCRO MAIOR QUE R$ 10.00
SELECT	nomeProd as 'Produto' , 
		vendaProd as 'Preço de Venda', 
		custoProd as 'Preço de Custo' ,
		(vendaProd - custoProd) as 'Lucro Liquido'
		FROM Produtos
		WHERE (vendaProd - custoProd) > 10.00 ;

-- 		13) TECLADO COM PRECO DE VENDA MENOR QUE R$ 20.00
SELECT * FROM Produtos 
		WHERE nomeProd like '%teclado%'
		AND vendaProd < 20.00;

-- 		14) MOUSE COM PRECO DE VENDA IGUAL OU SUPERIOR A R$ 10.00
SELECT * FROM Produtos 
		WHERE (nomeProd like 'mouse %'
		OR nomeProd = 'mouse')
		AND vendaProd >= 10.00;


-- introdução a união de consultas e função de agregação
SELECT nomeProd as 'Produto', custoProd as 'Custo' from Produtos
union all
SELECT  'Total de produtos', sum(custoProd) as 'Custo' from Produtos;









