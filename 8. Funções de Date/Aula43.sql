-- ADDDATE: adiciona ou remove uma quantidade de horas,dias,meses,anos de uma data
	-- ADDDATE(coluna, data para adicionar)
    
SELECT last_update, ADDDATE(last_update, '5 DAYS') AS adiciona_5_dias,
ADDDATE(last_update, INTERVAL 2 MONTH) AS adiciona_2_meses,
ADDDATE(last_update, INTERVAL -2 YEAR) AS remove_2_meses
FROM actor