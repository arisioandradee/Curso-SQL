-- DAYOFWEEK: retorna o dia da semana em uma determinada data
	-- inicia com 1(domingo)
SELECT last_update, DAYOFWEEK(last_update)
FROM actor;

-- DAYOFYEAR: retorna o dia do ano em uma determinada data
SELECT last_update, DAYOFYEAR(last_update)
FROM actor;

-- WEEKOFYEAR: retorna a semana do ano em uma determinada data
SELECT last_update, WEEKOFYEAR(last_update)
FROM actor;