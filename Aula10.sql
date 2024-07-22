-- Funções em SQL
-- São blocos de códigos reaproveitáveis e são utilizadas para extrair resultados que demandam mais programaçãoptimize
-- MIN, MAX, AVG, SUM, COUNT
USE employees;

SELECT MIN(salary) FROM salaries;
SELECT MAX(salary) FROM salaries;
SELECT AVG(salary) FROM salaries;
SELECT SUM(salary) FROM salaries;

-- COUNT: Retorna o número de valores que combinam com algum critério, podemos utilizar com o WHERE
SELECT COUNT(gender) 
FROM employees WHERE gender = 'M';
