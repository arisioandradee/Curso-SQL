-- UNION ALL: combina o resultado de dois ou mais selects, as colunas precisam ter o mesmo nome
	-- os resultados são agregados em uma só coluna, porém podemos selecionar mais de uma por vez
		-- diferente do UNION, ele traz dados duplicados!
        
USE employees;

SELECT dept_no FROM departments
UNION ALL SELECT dept_no FROM dept_emp;