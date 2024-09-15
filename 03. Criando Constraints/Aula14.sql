use constraints;

CREATE TABLE sala(
	numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    disciplina VARCHAR(30),
    professor VARCHAR(30)
);

INSERT INTO sala(disciplina, professor)
VALUES ('Matemática', 'Frederico'), ('Quimica', 'João');
    
SELECT * FROM SALA