-- COUNT: conta o número de determinada ocorrencia de uma determinada coluna

USE sakila;

SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount