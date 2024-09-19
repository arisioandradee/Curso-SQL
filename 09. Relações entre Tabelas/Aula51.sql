-- One to Many: uma tabela possui varios relacionamentos com outra /ex: cliente - pedido

CREATE TABLE cliente(
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE pedido(
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	qtd_itens INTEGER,
    total FLOAT,
    cliente_id INTEGER,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

INSERT INTO cliente(nome, data_nascimento) VALUES ('Arisio', '2003-04-02'),
	 ('Matheus', '2000-07-20'),  ('Rian', '1998-12-24');

INSERT INTO pedido(qtd_itens, total, cliente_id) VALUES (2, 98.40, 1), (5, 215.20, 2), (1, 20.99, 3);

-- Pedidos
SELECT p.id AS id_pedido, p.qtd_itens, p.total, c.nome
FROM pedido AS p
JOIN  cliente AS c
WHERE p.id = c.id

-- Pedidos do cliente Matheus
SELECT c.nome, p.id AS id_pedido
FROM cliente AS c
JOIN pedido as p ON c.id = p.cliente_id
WHERE c.nome = 'Matheus'