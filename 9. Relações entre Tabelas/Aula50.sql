-- One to One: teremos no máximo um registro ligado a outro. /ex: estudante - info. contato

CREATE TABLE estudantes (
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    turma VARCHAR(50)
);

CREATE TABLE contatos(
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    estudante_id INTEGER,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

INSERT INTO estudantes(nome, turma) VALUES ('Arisio', 'Turma A'),  ('Andrade', 'Turma A'),
	 ('Gabriel', 'Turma B'),  ('João', 'Turma C');
     
INSERT INTO contatos(telefone, estudante_id) VALUES ('88999999988',1), ('88999999977',2), 
	('88999999966',3), ('88999999955',3);
    
SELECT * FROM contatos;

SELECT e.id, e.nome, e.turma, c.telefone
FROM estudantes AS e
JOIN contatos AS c
WHERE e.id = c.estudante_id