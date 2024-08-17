-- Operadores lógicos --
-- AND: Recebe duas condições e só volta com os resultados que atendem as duas;
-- OR: Recebe duas condições e volta os resultados que atendem pelo menos umas
-- NOT: Inverte uma cláusula

SELECT * 
FROM employees.salaries
WHERE salary > 80000 AND from_date > '2000-12-12' AND emp_no between 10500 and 10600;

SELECT * 
FROM titles
WHERE title = 'Senior Enginer' OR emp_no > 12500
ORDER BY emp_no DESC;

SELECT *
FROM titles
WHERE NOT title = 'Staff' AND NOT title = 'Senior Engineer';