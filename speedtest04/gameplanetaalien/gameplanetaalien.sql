create database planetaalien;

use planetaalien;

create table usuario(

id int primary key auto_increment,
nome varchar(70) NULL,
apelido varchar(70) NOT NULL,
email varchar(80) NOT NULL,
senha nchar(8) NOT NULL

 );
 
 
 show tables;
 describe usuario;
 insert into usuario(nome,apelido,email,senha)
	values('tatiene','tati','tatiene@email.com','12345678'); 
 insert into usuario(nome,apelido,email,senha)
	values('miequeias','mik','mik@email.com','87654321');
insert into usuario(nome,apelido,email,senha)
	values('romulo','root','romulo@email.com','84562130');
 insert into usuario(nome,apelido,email,senha)
	values('celso','cell','celso@email.com','80270312'); 
 insert into usuario(nome,apelido,email,senha)
	values('vitoria','vitt','vitoria@email.com','47288081');
insert into usuario(nome,apelido,email,senha)
	values('renata','gaia','renata@email.com','80278471');

 select * from usuario;
 select id,apelido from usuario;
 
 delete from usuario;
 
 