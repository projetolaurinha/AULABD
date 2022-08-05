CREATE DATABASE revisao;
USE revisao;

CREATE TABLE produtos(
nome_produto varchar(255),
cor varchar(255),
preco decimal(6,2),
codigo int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE clientes(
nome_cliente varchar(255),
email varchar(255),
estado varchar(2),
id_cliente int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE compras(
data_compra date,
nf int PRIMARY KEY AUTO_INCREMENT,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY(codigo) REFERENCES produtos (codigo)
);


