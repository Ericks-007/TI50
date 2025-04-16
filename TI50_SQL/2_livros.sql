---- criar um banco de dados chamado livros
-- acessar o banco de dados
-- criar uma tabela livros com id, titulo,ano de lançamento, preço, autores
create database "livros";
GO

use livros;
GO

create table "livros"(
		idLivros int,
		tituloLivros varchar(30),
		AnoLancLivros date,
		precoLivro decimal(12,2),
		autoresLivros varchar(50)
)
GO

insert into livros (idLivros,tituloLivros,AnoLancLivros,precoLivro,autoresLivros) values
					(1,'pequeno principe','2008-09-12',245.98,'Juliano Almondega')
select * from livros;
Go