drop database dbZoologico;

show database;

create database dbZoologico;

use dbZoologico;

show databases;

create table tbAnimais(
codigo int,
tipo char(15),
nome char(30),
idade tinyint,
valor decimal(10,2)
);

show tables;

insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(1, 'cachorro', 'Djudi', 3, 300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(2, 'cachorro', 'Sula', 5, 300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(3, 'cachorro', 'Sarina', 7, 300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(4, 'gato', 'Pipa', 2, 500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(5, 'gato', 'Sarangue', 2, 500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(6, 'gato', 'Clarences', 1, 500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(7, 'coruja', 'Agnes', 0, 700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(8, 'coruja', 'Arabela', 1, 700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(9, 'sapo', 'Quash', 1, 100.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)
	values(10, 'peixe', 'Fish', 0, 100.00);

select distinct tipo, nome from tbAnimais;

desc tbAnimais;

select * from tbAnimais