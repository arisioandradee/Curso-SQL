USE cadastro

-- Cláusula WHERE --
-- Se não utilizamos o WHERE iremos aplicar determinada ação a todos os dados da tabela --

SELECT * FROM pessoas

SELECT nome 
FROM pessoas
WHERE rg = '1234567'

UPDATE pessoas SET limite = 5000 WHERE nome = 'João';

-- Alterando o Safe Mode --
SET SQL_SAFE_UPDATES = 0;