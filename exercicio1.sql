create database escola;
use escola;
create table Aluno(
	id int primary key auto_increment,
	nome varchar(200) not null,
	fone varchar(15) not null,
	cpf  varchar(11),
	dtnasc date,
	sexo char(1),
	rua varchar(100),
	numero int,
	bairro varchar(100),
	cidade varchar(100),
	estado char(2),
	outros varchar(200)
);

create table curso(
	id int primary key auto_increment,
	nome varchar(200),
	semestre varchar(6)
);

create table professor(
	id int primary key auto_increment,
	nome varchar (200),
	graduacao varchar(200),
	fone varchar (15)
);

create table matricula(
	id int primary key auto_increment,
	aluno_id int,
	curso_id int,
	foreign key(aluno_id) references aluno(id),
	foreign key (curso_id) references curso (id)
);
create table disciplina(
	id int auto_increment primary key,
	nome varchar(200),
	professor_id int,
	curso_id int,
	foreign key(professor_id) references professor(id),
	foreign key(curso_id) references curso(id)
);