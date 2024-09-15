-- Subquery: é uma query dentro de outra query
USE employees

SELECT first_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS 'Soma Salário'
FROM employees;