create table cliente (
cpfcliente varchar(11),
nome varchar(30),
primary key(cpfcliente)
);
create table endereco(
cpf varchar(11),
codigo int, 
endereco varchar(50),
primary key(cpf,codigo),
foreign key(cpf) references cliente(cpfcliente)
);
create table notafiscal(
numero int,
data date,
vlTotal decimal (7,2),
cpf varchar(11),
primary key (numero),
foreign key(cpf) references cliente(cpfcliente)
);
create table produto(
codigo int,
nome varchar(20),
vlUnit decimal(5,2),
qtdEstoque int,
primary key (codigo)
);
create table item(
item int,
vlTotal decimal(7,2),
qtdVend int,
codigo int,
numero int,
primary key(item, codigo, numero),
foreign key (codigo) references produto(codigo),
foreign key (numero) references notafiscal(numero)
);