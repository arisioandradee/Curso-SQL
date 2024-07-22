-- Usando o LIMIT --
-- Forma de limitar os resultados e tornar a consulta mais rápida, podemos definir o número de resultados retornados

USE employees;

SELECT * 
FROM salaries
ORDER BY salary DESC LIMIT 10; -- Os 10 maiores salários 

SELECT *
FROM employees
ORDER BY  birth_date ASC LIMIT 15;