-- O que são constraints?
-- São regras que definem como os campos serão preenchidos (ex: NOT NULL)

CREATE DATABASE constraints;
USE constraints;

CREATE TABLE usuario(
	nome VARCHAR(50) NOT NULL,
    idade INTEGER
);

INSERT INTO usuario(nome, idade) VALUES ('Arisio', 21);
INSERT INTO usuario(nome, idade) VALUES (NULL, 22); -- Não permite adicionar valor NULO!

select * from usuario