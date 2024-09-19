-- CEIL: arrendonda números com casas decimais para cima

USE sakila;

SELECT amount, CEIL(amount) AS numero_arredondado
FROM payment