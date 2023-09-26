/*Criar banco de dados*/
CREATE database bardodba;
/*usar banco de dados*/
use bardodba;


/* Criar uma tabela garcom */

CREATE TABLE Garcom (
    id INT PRIMARY KEY auto_increment,
    /*Criar um campo do tipo string(texto) com tamanho 50*/
    Nome VARCHAR(50)
);

/*Inserindo o primeiro garçom do bar do DBA*/
insert into garcom(nome)values('celso');
insert into garcom(nome)values('miqueias');
insert into garcom(nome)values('artur');
insert into garcom(nome)values('tatiene');
insert into garcom(nome)values('renata');
insert into garcom(nome)values('vitoria');
/*Pesquisar todos os garçons*/

select * from garcom;

/*Criar mesa*/

CREATE TABLE mesa(
    id INT primary KEY auto_increment,
    localizacao NCHAR(2)
    );

/*Inserindo as mesas. Cinco fileiras: a,b,c,d,e*/
/*Em cada fileira existe 9 mesas*/
/*FILEIRA A*/
insert into mesa(localizacao)values('A1');
insert into mesa(localizacao)values('A2');
insert into mesa(localizacao)values('A3');
insert into mesa(localizacao)values('A4');
insert into mesa(localizacao)values('A5');
insert into mesa(localizacao)values('A6');
insert into mesa(localizacao)values('A7');
insert into mesa(localizacao)values('A8');
insert into mesa(localizacao)values('A9');
/*FILEIRA B*/
insert into mesa(localizacao)values('B1');
insert into mesa(localizacao)values('B2');
insert into mesa(localizacao)values('B3');
insert into mesa(localizacao)values('B4');
insert into mesa(localizacao)values('B5');
insert into mesa(localizacao)values('B6');
insert into mesa(localizacao)values('B7');
insert into mesa(localizacao)values('B8');
insert into mesa(localizacao)values('B9');
/*FILEIRA C*/
insert into mesa(localizacao)values('C1');
insert into mesa(localizacao)values('C2');
insert into mesa(localizacao)values('C3');
insert into mesa(localizacao)values('C4');
insert into mesa(localizacao)values('C5');
insert into mesa(localizacao)values('C6');
insert into mesa(localizacao)values('C7');
insert into mesa(localizacao)values('C8');
insert into mesa(localizacao)values('C9');
/*FILEIRA D*/
insert into mesa(localizacao)values('D1');
insert into mesa(localizacao)values('D2');
insert into mesa(localizacao)values('D3');
insert into mesa(localizacao)values('D4');
insert into mesa(localizacao)values('D5');
insert into mesa(localizacao)values('D6');
insert into mesa(localizacao)values('D7');
insert into mesa(localizacao)values('D8');
insert into mesa(localizacao)values('D9');
/*FILEIRA E*/
insert into mesa(localizacao)values('E1');
insert into mesa(localizacao)values('E2');
insert into mesa(localizacao)values('E3');
insert into mesa(localizacao)values('E4');
insert into mesa(localizacao)values('E5');
insert into mesa(localizacao)values('E6');
insert into mesa(localizacao)values('E7');
insert into mesa(localizacao)values('E8');
insert into mesa(localizacao)values('E9');

select * from mesa;

select count(localizacao) from mesa;


CREATE TABLE comanda (
    id INT PRIMARY KEY auto_increment,
    ValorTotal DECIMAL(5,2),
    gorjeta INT,
    Fechada tinyint(1),
    estrelas int,
    fk_Garcom_id INT,
    fk_Mesa_id INT
);
 
 select * from comanda;
 
 /*alter table-altera a tabela*/
 /*constraint - limitações*/
 /*Adicionar uma constraint: foreing key (chave estrangeira)*/
 /*alter alterar*/
 /*table tabela*/
 /*comanda nome  da tabela */
 /*add constraint_2 é o nome da constraint*/
 /*foreing key chave estrangeira*/
 /*fk_garcom_id campo de tabela da comanda*/
 /*references garcom referenciado a tabela garcom*/
 /*on delete cascade deletar em cascata*/
 /*o campo garcom(id) o id é da tabela garcom*/
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_2
    FOREIGN KEY (fk_Garcom_id)
    REFERENCES garcom(id)
    ON DELETE CASCADE;
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_3
    FOREIGN KEY (fk_Mesa_id)
    REFERENCES mesa(id)
    ON DELETE CASCADE;
    
    insert into comanda(valor,fechada,estrelas,fk_garcom_id,fk_mesa_id)
			    value(999.99,false,2,2,5);
    
    select * from comanda;
    SELECT * FROM garcom;
    select * from mesa;
    
    /*
    DDL 
    create - criar
    alter - alterar
    drop - derrubar
    */
    
    /*
    
    */
    
    