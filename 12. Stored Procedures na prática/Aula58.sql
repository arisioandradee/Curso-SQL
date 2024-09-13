-- Criando procedure mais completa

-- Nome do usuário e salário
DELIMITER //
CREATE PROCEDURE esmployeesNameAndSalaries()
BEGIN
    SELECT ep.first_name, salary
    FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no;
END//

SHOW CREATE PROCEDURES employeesNameAndSalaries;

CALL employeesNameAndSalaries;