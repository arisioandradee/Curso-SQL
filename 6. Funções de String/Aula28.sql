-- CONCAT_WS: concatena duas ou mais strings com um separador comum, o 1° argumento é o separador

USE sakila;

SELECT actor_id, CONCAT_WS('-',first_name, last_name) AS nome_sobrenome
FROM actor 