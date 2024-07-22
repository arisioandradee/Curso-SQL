-- Operadores em SQL

-- LIKE: Utilizado em conjunto com o Where, filtra ainda mais nosso resultados. Usamos o 'coringa' %
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Jo%e'

-- IN: Vai buscar um conjunto de valores
SELECT * 
FROM dept_emp
WHERE dept_no IN ('d004', 'd005', 'd006');

-- BETWEEN: Recebe uma faixa de valores e retorna o resultado da operação
SELECT *
FROM dept_emp
WHERE dept_no BETWEEN 'd004' AND 'd005'
ORDER BY dept_no DESC;