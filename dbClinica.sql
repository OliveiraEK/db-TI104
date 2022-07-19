drop database dbClinica;

show database;

create database dbClinica;

use dbClinica;

show databases;

create table tbPaciente(
idPaciente int not null auto_increment,
nmPaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45) unique,
primary key (idPaciente)
);

create table tbMedico(
idMedico int not null auto_increment,
nmMedico varchar(45),
telefoneMedico varchar(9),
primary key (idMedico)
);

create table tbReceitaMedica(
idReceitaMedica int not null auto_increment,
descricao varchar(255) not null unique,
primary key(idReceitaMedica)
);

create table tbConsulta(
idConsulta int not null auto_increment,
dt_consulta datetime,
Medico_idMedico int,
Paciente_idPaciente int,
ReceitaMedica_idReceitaMedica int
primary key(idConsulta)references tbConsulta,
foreign key(idMedico)references tbMedico,
foreign key(idPaciente)references tbPaciente,
foreign key(idReceitaMedica)references tbReceitaMedica
);

insert into(idConsulta,dt_consulta,Medico_idMedico,Paciente_idPaciente,ReceitaMedica_idReceitaMedica)
	values(1, '2022-06-09', 2)


insert into(idPaciente,nmPaciente,telefonePaciente,convenio)
	values(1, Calleri, 912345678, '...')

insert into(idMedico,nmMedico,telefoneMedico)
	values(1, Claudio, '940028922')

insert into(idReceitaMedica,descricao)
	values(1, '...')

show tables;

desc tbConsulta;
desc tbPaciente;
desc tbMedico;
desc tbReceitaMedica;
