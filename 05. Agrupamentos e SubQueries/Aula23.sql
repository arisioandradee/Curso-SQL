-- HAVING: semelhante ao where, porem utilizamos com funções de agregação(SUM,AVG...)

USE employees

SELECT title, COUNT(title) AS 'Títulos'
FROM titles
GROUP BY title
HAVING COUNT(title) > 100000