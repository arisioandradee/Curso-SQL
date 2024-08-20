USE employees

SELECT hire_date, COUNT(hire_date) AS 'Data contratação'
FROM employees
GROUP BY hire_date;
