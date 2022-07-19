drop database dbAcademia;

show database;

create database dbAcademia;

use dbAcademia;

show databases;

create table tbRegistro(
idAluno int not null auto_increment,
idTurma int,
ausencia int,
idRegistro int
);

create table tbAluno(
matricula int not null auto_increment,
dataMatricula date,
nome varchar(45),
endereco varchar(45),
nascimento date,
altura float,
peso float,
idTurma int
);

create table tbTurma(
id int not null auto_increment,
quantAlunos int,
horarioAula datetime,
duracaoAula datetime,
dataInicio date,
dataFim date,
atividade int,
idInstrutor int,
idMonitor int
);

create table tbAtividade(
id intnot null auto_increment,
atividade varchar(45)
);

create table tbInstrutor(
rg int not null unique,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);


create table tbMonitor(
id_aluno int not null auto_increment
);


show tables;

insert into tbRegistro(idAluno,idTurma,ausencia,idRegistro)
	values(6, 5, 10, 20);

insert into tbAluno(matricula,dataMatricula,nome,endereco,nascimento,
altura,peso,idTurma)
    values(2, '2022-02-15', 'João Cleber', 'Rua Francisco Abreu - 35B', '2002-01-01', 1.70, 65.0, 9);

insert into tbTurma(id,quantAlunos,horarioAula,duracaoAula,
dataInicio,dataFim,atividade,idInstrutor,idMonitor)
    values(3, 15, '14:45:14', '15:45:15', '2021-07-07', '2022-07-08', 'Musculação', 6, 3);

insert into tbInstrutor(rg,nome,nascimento,titulacao,telefone)
	values(356819528, 'Ana Cordeiro', '2001-01-01', '3', '98051-9565');

insert into tbAtividade(id, atividade)
	values(4, 'Musculação');

insert into tbMonitor(id_aluno)
	values(19);

insert into tbAtividade(id, atividade)
	values(4, 'Musculação');

desc tbRegistro;
desc tbTurma;
desc tbAluno;
desc tbInstrutor;
desc tbMonitor;
desc tbAtividade;

select * from tbFuncionarios;
select * from tbRegistro;
select * from tbTurma;
select * from tbAluno;
select * from tbInstrutor;
select * from tbMonitor;
select * from tbAtividade;