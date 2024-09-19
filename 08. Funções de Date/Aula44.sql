-- DATEDIFF: calcula a diferença de duas datas, o valor é retornado em dias

SELECT DATEDIFF(last_update, payment_date) AS intervalo_em_dias
FROM payment;