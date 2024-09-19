-- INSTR: retorna a posição do caractere em uma string

USE cadastro;

SELECT nome, instr(nome, 'A') AS posicao_a
FROM pessoas