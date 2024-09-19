USE sakila;

SELECT address_id, address, char_length(postal_code) as qtd_postal_code
FROM address
ORDER BY address_id DESC;