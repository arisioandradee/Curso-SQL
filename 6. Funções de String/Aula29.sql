-- FORMAT: formata um valor com um número de casas determinados por argumentos;

USE SAKILA;

SELECT customer_id, amount, FORMAT(amount,5) -- 5 CASAS DECIMAIS
FROM payment