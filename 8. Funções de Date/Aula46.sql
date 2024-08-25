-- DATE_FORMAT: formata a data com um padrao indicado
	-- DATE_FORMAT(data, formato)
    
SELECT last_update, DATE_FORMAT(last_update, '%D') AS dia, 
DATE_FORMAT(last_update, '%M') AS mes,
DATE_FORMAT(last_update, '%Y') AS ano,
DATE_FORMAT(last_update, '%d/%m/%y') AS novo_formato
FROM actor;