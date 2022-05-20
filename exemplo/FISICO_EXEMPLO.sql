CREATE DATABASE EXEMPLO;

USE EXEMPLO;



CREATE TABLE jogadores (
num_jogador int PRIMARY KEY AUTO_INCREMENT,
nome_ogador varchar(255),
cod_equipe int
);

CREATE TABLE equipes (
cod_equipe int PRIMARY KEY AUTO_INCREMENT,
nome_equipe varchar(255)
);

ALTER TABLE jogadores ADD FOREIGN KEY(cod_equipe) REFERENCES equipes (cod_equipe);
