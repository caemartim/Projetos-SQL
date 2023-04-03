/* create database padaria;
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
 alter table telefone change ddd ddd varchar(3) default '051' not null; */

 create database Loja;
 use loja;

 create table estado (
 id_estado int primary key auto_increment,
 uf char(2) not null,
 nome varchar(255) not null );

 desc estado;
 drop table estado;

 create table cidade (
 id_cidade int primary key auto_increment,
 nome varchar(255) not null,
 id_estado int not null,
 foreign key (id_estado) references estado(id_estado) );

 desc cidade;
 drop table cidade;

 create table cliente ( 
id_cliente int primary key auto_increment,
nome varchar(255) not null,
status varchar(200),
limite float,
endereço varchar(255) 
);

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
tipo char(3) not null,
ddd char(3) default '051'not null,
numero char(11) not null,
foreign key (id_cliente) references cliente (id_cliente)
);
desc telefone;
drop table telefone;

create table pedido (
id_pedido int primary key auto_increment,
id_cliente int not null,
data_pedido date not null,
foreign key (id_cliente) references cliente(id_cliente) );

desc pedido;
drop table pedido;

create table produto (
id_produto int primary key auto_increment,
id_categoria int not null,
codigo int not null,
categoria int not null,
nome varchar(255) not null,
preço float not null,
foreign key (categoria) references categoria(id_categoria) 
);
desc produto;
drop table produto;

create table pedido_produto (
id_pedido_produto int primary key auto_increment,
id_produto int not null,
id_pedido int not null,
quantidade int not null,
foreign key (id_produto) references produto (id_produto),
foreign key (id_pedido) references pedido (id_pedido) );

desc pedido_produto;
drop table pedido_produto;

alter table cliente change status  status_cliente enum('R','M','B'); /* alterar table*/
alter table pedido change dt_pedido dt_pedido date not null;

alter table cliente 
drop column endereço,
add logradouro varchar(100) not null,
add numero varchar(10) not null,
add complemento varchar (10),
add bairro varchar(50) not null,
add cep varchar(9) not null,
add cidade varchar(100) not null;


alter table cliente
change column cidade id_cidade int,
add constraint foreign key(id_cidade) references cidade (id_cidade); /* adicionar uma foreign key*/

alter table cliente change id_cidade id_cidade int not null;
