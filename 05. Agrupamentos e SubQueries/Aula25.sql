-- EXISTS: serve para checar se existe algum registro na SubQuery, retornando apenas se existir

SELECT first_name, last_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) as 'Soma Salário'
FROM employees
WHERE EXISTS (
	SELECT salary
    FROM sala ries
    WHERE employees.emp_no = salaries.emp_no
    HAVING SUM(salary) > 1000000
);
