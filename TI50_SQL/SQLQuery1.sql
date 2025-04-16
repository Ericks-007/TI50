-- Cria o base de dados
create database "Ti50";
GO
-- acessar o banco de dados
use Ti50;
GO

-- criar tabela
-- entre os parenteses vai a descrição da tabela
create table "Agenda"(
        idAgenda int,
		nomeAgenda varchar(50),
		dataNascAgenda date,
		emailAgenda varchar(50),
		doacaoAgenda decimal(10,2)
)
GO
-- insert declaratorio
insert into Agenda (idAgenda,nomeAgenda,dataNascAgenda,emailAgenda,doacaoAgenda)values
                    (1,'Marco Antonio','2018-11-02','marco@antonio',100.65);
GO
-- no insert declaratorio não é necessario seguir a ordem dos campos na tabela
insert into Agenda (idAgenda,doacaoAgenda,emailAgenda,nomeAgenda,dataNascAgenda)values
                    (2,257.24,'tito@senac','Tito Senac','2018-01-12');
GO
-- no insert declaratorio não preciso passar todos os campos
-- preciso passar somente os OBRIGATORIOS	
-- nesta tabela nao temos nenhum obrigatorio
insert into Agenda (idAgenda,nomeAgenda)values
					(3,'Tima Maro')
GO
-- Pode inserir mais de um registro de uma só vez
insert into Agenda (idAgenda,nomeAgenda,dataNascAgenda,emailAgenda,doacaoAgenda)values
                    (4,'Antonio Marcos','2020-01-22','antonio@marcos',200.65),
					(5,'Ava Dias','2000-01-20','ava@dias',200.65),
					(6,'Jacinto Lamas','1990-06-25','jacinto@lamas',1200.65),
					(7,'Takoku Navara','1980-11-27','takoku@navara',800.65),
					(8,'Isadora P.','2006-04-27','isadora@p',125.65);
GO
-- insert não declaratorio - nao declaro os campos
-- passar obrigatoriamente valores para todos os campos
-- passar esses valores na ordem que os campos foram criados
insert into Agenda values
					(9,'Paula Tejano','2010-08-24','paula@tejano',125.65),
					(10,'Lima Mei','2008-12-29','lima@mei',68.65);
GO

-- select retornando TUDO
select * from Agenda;
GO

use test9
drop database Ti50;