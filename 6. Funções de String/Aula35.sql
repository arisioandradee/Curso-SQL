-- SUBSTR: extrai uma string a partir de 2 indices, inicio e fim
	-- SUBSTR(texto, inicio, fim)
    
USE sakila;

SELECT last_update, SUBSTR(last_update,6,2) AS mes FROM actor;