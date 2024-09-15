USE employees

SELECT hire_date, COUNT(hire_date) AS 'Data de contratação'
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) <= 50;