create database escola31;
use escola 31;
create table aluno (
	idpessoa int primary key auto_increment,
	nome varchar(75)  not null,
	email varchar(75) not null,
	senha varchar(10) not null,
	cpf varchar(11) not null
);
create table professor(
	idprofessor int primary key auto_increment,
	nome varchar(75) not null,
	email varchar(75) not null,
	senha varchar(75) not null
);
create table curso(
	idcurso int primary key auto_increment,
	nome varchar(25) not null
);
create table matricula(
	idmatricula int primary key auto_increment,
	ativa int not null,
	data_cadastro date not null,
	idpessoa int not null,
	idcurso int not null,
	foreign key (idpessoa) references aluno (idpessoa),
	foreign key (idcurso) references curso (idcurso)
);
create table disciplina(
	iddisciplina int primary key auto_increment,
	nome varchar (75) not null,
	idprofessor int not null,
	foreign key(idprofessor) references professor (idprofessor)
);
create table disciplina_curso(
	iddisciplina_cursos int primary key auto_increment,
	idcurso int not null,
	iddisciplina int not null,
	foreign key(iddisciplina) references disciplina(iddisciplina),
	foreign key(idcurso) references curso(idcurso)
);
alter table disciplina change nome nomeDisp varchar(75); 
alter table professor change email mail varchar(100);
rename table aluno to discente;
rename table professor to docente;
alter table discente add endereco varchar(200);
alter table discente drop cpf;
alter table curso add duracao int;
