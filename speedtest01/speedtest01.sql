create database speedtest01;
use speedtest01;

create table pessoa
(
id int primary key auto_increment,
nome varchar(80)
);
/*DML*/
insert into pessoa(nome)values('Tatiene');
insert into pessoa(nome)values('Celso');
insert into pessoa(nome)values('Mikeias');
insert into pessoa(nome)values('Josivan');

/*DQL*/
select * from pessoa;