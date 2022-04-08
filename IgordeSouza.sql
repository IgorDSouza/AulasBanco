create database Loja;
use Loja;
create table Cliente
(
Codigo int primary key auto_increment,
Nome varchar(10) not null,
Sobrenome varchar(20),
Data date not null,
idade int ,
CPF int not null,
Sexo varchar(10)
);
ALTER TABLE Cliente add Salario decimal(9,2); 
ALTER TABLE Cliente change Data dtNascto date;
INSERT INTO Cliente (Codigo,Nome,Sobrenome,DtNascto,idade,CPF,Sexo,Salario) VALUES (01,'Leo','Pires',10/10/1980,34,123456789,'M',540.00);
INSERT INTO Cliente (Codigo,Nome,Sobrenome,DtNascto,idade,CPF,Sexo,Salario) VALUES (02,'Leoncio','Silva',01/05/1982,32,987654321,'M',1500.00);
INSERT INTO Cliente (Codigo,Nome,Sobrenome,DtNascto,idade,CPF,Sexo,Salario) VALUES (03,'Leandro','Souza',30/12/1960,54,654987321,'M',2000.00);
INSERT INTO Cliente (Codigo,Nome,Sobrenome,DtNascto,idade,CPF,Sexo,Salario) VALUES (04,'Ana','Felix',25/11/1962,52,321456789,'F',2300.00);

Desc Cliente;

SELECT codigo,nome, idade FROM Cliente ;

SELECT salario,idade FROM cliente WHERE nome='Leo';

ALTER TABLE Cliente DROP idade;

ALTER TABLE Cliente MODIFY CPF varchar(11);

SELECT * FROM Cliente WHERE salario>='1000' ORDER BY salario ;

ALTER TABLE Cliente ADD Bairro varchar(20) not null;

INSERT INTO Cliente (Codigo,Nome,Sobrenome,DtNascto,CPF,Sexo,Salario,Bairro) VALUES (05,'Paula','Castro',30/11/1963,221456789,'F',680.00,'Ingá');
ALTER TABLE Cliente MODIFY Sexo char(1);

UPDATE Cliente set Bairro = 'centro' WHERE Codigo in (1,2);

UPDATE Cliente set Bairro = "Icarai" WHERE Codigo = 3;

SELECT DISTINCT Bairro from Cliente; 

SELECT MAX(salario) from Cliente;

SELECT MIN(idade)

SELECT COUNT(nome) from Cliente WHERE nome like "Le%";