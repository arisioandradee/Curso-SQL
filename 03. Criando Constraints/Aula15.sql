-- Foreign Key é uma ligação de uma tabela com outra tabela;
	-- Com o FK conseguimos impedir remoções de dados que tem ligações entre tabelas;
    
CREATE TABLE usuario(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE enderecos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	rua VARCHAR(30),
    numero VARCHAR(10),
    usuario_id INT NOT NULL,
    FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);

INSERT INTO usuario(nome, idade) VALUES ('Arisio', 21), ('Lucero', 29), ('Pedro', 24);
INSERT INTO enderecos(rua, numero, usuario_id) VALUES ('Rua 1', '100', 1), ('Rua 2', '200', 3), ('Rua 3', '300', 3);

SELECT * FROM usuario
SELECT * FROM enderecos