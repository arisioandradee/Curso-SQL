-- ADDTIME: adiciona ou remove tempo a uma data
	-- Podemos utilizar o formato: yyyy-mm-dd hh:mm:ss)
    
USE sakila;

SELECT last_update, ADDTIME(last_update, '03:00:00') AS 3_horas_diferenca,
FROM actor