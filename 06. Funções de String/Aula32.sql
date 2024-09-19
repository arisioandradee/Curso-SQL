-- LEFT: extrai uma quantidade de caracteres de uma string

USE sakila;

SELECT first_name, LEFT(first_name, 2), last_name, LEFT(last_name,2)
FROM customer