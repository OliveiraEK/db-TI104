-- Apagar o banco de dados
drop database dbPadaria;

-- Visualizar os bancos de dados no servidor SQL
show database;

-- Criar o banco de dados
create database dbPadaria;

-- Acessando o banco de dados
use dbPadaria;

-- Visualizar banco de dados criado
show databases;

-- criando as tabelas no banco de dados
create table tbFuncionarios(
codigo int,
nome varchar(100),
telcel char(10),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100)
);

-- inserir registro na tabela de banco de dados
insert into tbFuncionarios(codigo,nome,telCel,logradouro,
numero,cep,bairro)values(1,'Amanda da Cunha',
'95724-7852','Rua Maria Joana da Cunha','35B','04523-985',
'Santo amaro');

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
desc tbFuncionarios;

create table tbUsuarios(
codigo int,
nome varchar(20),
senha varchar(20)
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
desc tbFuncionarios;
desc tbUsuarios;

-- Visualizando os registros nas tabelas
select * from tbFuncionarios;