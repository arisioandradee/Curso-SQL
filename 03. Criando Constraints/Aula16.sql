-- Index: faz a consulta que envolve a coluna mais rápida
	-- As consultas que são melhoradas pelo INDEX são as mesmas com WHERE.
    
USE constraints

CREATE INDEX index_nome
ON usuario(nome);

-- Depois faz a consulta, o tempo de resposta será bem menor!

DROP INDEX index_nome ON usuario;