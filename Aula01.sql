USE cadastro

CREATE TABLE pessoas(
	cpf VARCHAR(71) PRIMARY KEY,
	rg VARCHAR(7),
	nome VARCHAR(100),
	limite INTEGER
);

INSERT INTO pessoas (cpf, rg, nome, limite) VALUES
	('12345678911', '1234567', 'Arisio Andrade', 2000),
    ('12345678912', '1234568', 'João', 2000),
    ('12345678913', '1234569', 'Maria', 2000),
    ('12345678914', '1234561', 'Souza', 2000),
    ('12345678915', '1234562', 'Andrade', 2000);

-- SELECIONANDO TODOS OS DADOS --
SELECT * FROM pessoas

-- SELECIONANDO DADOS ESPECIFICOS --
SELECT nome, rg 
FROM pessoas
WHERE rg = '1234567'