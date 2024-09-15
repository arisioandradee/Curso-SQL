-- UNION: combina resultado de dois ou mais selects, as colunas precisam ter o mesmo nome
USE employees

SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp
ORDER BY dept_no ASC