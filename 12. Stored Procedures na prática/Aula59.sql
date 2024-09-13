-- Procedure com parâmetros
DELIMITER //

CREATE PROCEDURE employeesWithHighSalary(
    IN highSalary INT 
)
BEGIN:
    SELECT ep.first_name, salary
    FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no;
    WHERE highSalary > 30000;
END//

CALL employeesWithHighSalary;