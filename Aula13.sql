-- Constraint UNIQUE garante que todos os valores da coluna serão diferentes!
CREATE DATABASE constraints2;
USE constraints2;

CREATE TABLE usuario(
	nome VARCHAR(50) NOT NULL,
    idade INTEGER,
    email VARCHAR(100) UNIQUE
);

INSERT INTO usuario(nome, idade, email) VALUES 
	('Arisio', 20, 'arisio@gmail.com'),
    ('Douglas', 27, 'doulgas@gmail.com');
    ('Cristiano', 39, 'arisio@gmail.com'); -- Não permite pois já existe esse email no BD

-- Adicionando chave primária    
ALTER TABLE usuario ADD cpf VARCHAR(11) PRIMARY KEY;
