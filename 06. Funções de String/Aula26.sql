USE sakila;

-- Função CHAR_LENGTH retorna o número de caracteres de uma string de uma determinada coluna

SELECT first_name, char_length(first_name) AS qtd_caracters
FROM actor