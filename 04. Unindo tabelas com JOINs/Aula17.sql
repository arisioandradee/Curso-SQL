-- Join: São cosultas que envolvem duas ou mais tabelas, que geralmente possuem relação entre signal
	-- Pode ser: LEFT, RIGHT e INNER JOIN
    
-- INNER JOIN: vai resultar nas colunas que fazem relação entre as tabelas
USE employees;

SELECT employees.first_name, employees.last_name, salaries.salary
FROM employees
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no;