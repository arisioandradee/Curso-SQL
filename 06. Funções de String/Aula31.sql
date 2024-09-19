-- LCASE: retorna todo texto em lower case(caixa baixa)

use sakila;

SELECT first_name, lcase(first_name), last_name, lcase(last_name)
FROM customer;

SELECT first_name, last_name, lcase(CONCAT(first_name, ' ', last_name)) as nome_completo_lcase
FROM customer