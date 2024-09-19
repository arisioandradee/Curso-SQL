USE sakila;

SELECT REPLACE(first_name,'MARY','Mary') as nome, REPLACE(last_name, 'SMITH', 'Smith') AS sobrenome
FROM customer
WHERE last_name = 'SMITH'