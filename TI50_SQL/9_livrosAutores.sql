create database Livros;
use Livros;
create table Autores(
				idAutor int identity(1,1),
				nomeAutor varchar(100) not null ,
				emailAutor varchar(100) not null unique,
				nacionalidadeAutor varchar(100),

				constraint pk_idAutor primary key(idAutor) 
					);

insert into Autores(nomeAutor,emailAutor,nacionalidadeAutor)
					values
					('Jorge Amado','Jorge@Amado','Brasileira'),
					('Clarice Lispector','Clarice@Lispector','Brasileira'),
					('Fernando Sabino','Fernando@Sabino','Brasileira'),
					('Chico Buarque','Chico@Buarque','Brasileira'),
					('Paulo Coelho','Paulo@Coelho','Brasileira');
select * from Autores;

create table Livros(
					idLivro int identity(1,1),
					tituloLivro varchar(100) not null,
					isbnLivro char(11) not null unique,
					idiomaLivro varchar(30),
					constraint pk_idLivro primary key (idLivro)
					);
drop table Livros;

insert into Livros(tituloLivro,isbnLivro,idiomaLivro)
			values
			('Capitães da Areia','1111111','Portugues'),
			('Gabriela, Cravo e Canela','22222','Portugues'),
			('A Hora da Estrela','333333','Portugues'),
			('Perto do Coração Selvagem','44444','Portugues'),
			('O Encontro Marcado','55555','Portugues'),
			('O Homem Nu','666666','Portugues'),
			('Budapeste','7777777','Portugues'),
			('Leite Derramado','8888888','Portugues'),
			('O Alquimista','9999999','Portugues'),
			('Brida','1010100','Portugues'),
			('Projeto Brasil Literário','12121212','Portugues'); 

select * from Livros;

create table LivrosAutores(
					idLivro int not null,
					idAutor int not null,

					constraint fk_idLivro foreign key(idLivro) references Livros(idLivro),
					constraint fk_idAutor foreign key(idAutor) references Autores(idAutor),
					constraint pk_livroAutor primary key (idLivro,idAutor)
 				);
insert into LivrosAutores(idAutor,idLivro)
			values
			(1, 1), -- Jorge Amado -> Capitães da Areia
			(1, 2), -- Jorge Amado -> Gabriela, Cravo e Canela
			(2, 3), -- Clarice Lispector -> A Hora da Estrela
			(2, 4), -- Clarice Lispector -> Perto do Coração Selvagem
			(3, 5), -- Fernando Sabino -> O Encontro Marcado
			(3, 6), -- Fernando Sabino -> O Homem Nu
			(4, 7), -- Chico Buarque -> Budapeste
			(4, 8), -- Chico Buarque -> Leite Derramado
			(5, 9), -- Paulo Coelho -> O Alquimista
			(5, 10), -- Paulo Coelho -> Brida
			(4, 11), -- Chico Buarque -> Projeto Brasil Literário (coautoria)
			(5, 11); -- Paulo Coelho -> Projeto Brasil Literário (coautoria)


select	* 
		from autores
		inner join LivrosAutores ON autores.idAutor = LivrosAutores.idAutor
		inner join Livros on LivrosAutores.idLivro = Livros.idLivro;

select	L.tituloLivro,
		A.nomeAutor
		from autores A
		inner join LivrosAutores LA ON A.idAutor = LA.idAutor
		inner join Livros L on LA.idLivro = L.idLivro;