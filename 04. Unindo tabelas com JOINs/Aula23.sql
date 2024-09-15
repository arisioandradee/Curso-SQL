-- Agrupando dados com o GROUP BY

USE employees;

SELECT gender, COUNT(gender) AS 'Qtd por Gênero'
FROM employees
GROUP BY gender;