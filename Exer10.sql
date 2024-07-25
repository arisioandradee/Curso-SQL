CREATE DATABASE banco;

CREATE TABLE contas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    saldo DOUBLE,
    data_nascimento DATE
);

CREATE INDEX index_saldo ON contas(saldo);

INSERT INTO contas(nome, sobrenome,  saldo, data_nascimento) VALUES
	('Arisio', 'Andrade', 345.00, '2003-04-02'), 
    ('João', 'Pedro', 210.00, '2008-12-02'), 
    ('Augusto', 'Melo', 345.00, '1999-07-04'); 
    
SELECT * FROM contas