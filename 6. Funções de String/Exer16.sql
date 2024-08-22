USE sakila;

SELECT address_id, LEFT(last_update,10) AS data
FROM address
WHERE address_id > 150

SELECT * FROM address