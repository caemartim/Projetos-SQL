create database padaria;
use padaria;
create table cliente (
id int primary key auto_increment,
nome varchar(255) not null, 
cpf varchar(11) not null, 
email varchar(60)
);
 
 desc cliente; 
 alter table cliente change nascimento nascimento date not null;
 
create table telefone (
id int primary key auto_increment,
idcliente int,
tipo char(1) not null,
ddd varchar(3) not null,
numero varchar(9) not null,
foreign key (idcliente) references cliente (id)
 );

 desc telefone;
 alter table telefone change ddd ddd varchar(3) default '051' not null;
 
 create database Loja;
 use loja;
 
 create table estado (
 id int primary key auto_increment,
 uf varchar(255) not null,
 nome varchar(255) not null );
 
 desc estado;
 drop table estado;
 
 create table cidade (
 id int primary key auto_increment,
 nome varchar(255) not null,
 id_estado int not null,
 foreign key (id_estado) references estado(id) );
 
 
 create table cliente ( 
 id_cliente int primary key auto_increment,
 nome varchar(255) not null,
status_cliente char(6),
limite float,
endereço varchar(255) );

desc cliente;
drop table cliente;

create table categoria (
id_categoria int primary key auto_increment,
nome varchar(255) not null );

desc categoria;
drop table categoria;

create table telefone (
id_telefone int primary key auto_increment,
id_cliente int,
tipo varchar(3) not null,
ddd char(3) default '051'not null,
numero char(11) not null,
foreign key (id_cliente) references cliente (id_cliente)
);
desc telefone;
drop table telefone;

create table pedido (
id_pedido int primary key auto_increment,
id_cliente int,
data_pedido date not null,
quantidade int not null,
foreign key (id_cliente) references cliente(id_cliente) );

desc pedido;
drop table pedido;

create table produto (
id_produto int primary key auto_increment,
id_categoria int not null,
codigo_produto int not null,
nome varchar(255) not null,
preço float not null
);
desc produto;
