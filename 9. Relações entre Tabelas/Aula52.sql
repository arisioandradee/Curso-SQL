-- Many to Many: duas tabelas com multiplas relacoes entre si

CREATE TABLE materias (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nome VARCHAR(100)
);

CREATE TABLE estudante_materia (
	estudante_id INT NOT NULL,
	materia_id INT NOT NULL,
	FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
	FOREIGN KEY (materia_id) REFERENCES materias(id)
);

INSERT INTO materias (nome) VALUES ("Matemática");
INSERT INTO materias (nome) VALUES ("Química");
INSERT INTO materias (nome) VALUES ("Física");

INSERT INTO estudantes (nome, turma) VALUES ("Maria", "202b");
INSERT INTO estudantes (nome, turma) VALUES ("Amanda", "104c");

INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (1, 3);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (2, 3);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (3, 1);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (3, 2);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (3, 3);
INSERT INTO estudante_materia (estudante_id, materia_id) VALUES (4, 2);

-- ALUNOS QUIMICA
SELECT * FROM alunos
JOIN estudante_materia ON estudante_materia.estudante_id = alunos.id 
AND estudante_materia.materia_id = 2;