-- Além de alterar o Delimiter, temos que utilizar também outros recursos:
-- BEGIN: inicia a procedure, END: finaliza
-- CALL: chama a procedure

DELIMITER //
CREATE PROCEDURE nomeCompleto()
BEGIN
    SELECT CONCAT(first_name, ' ', last_name) AS nomeCompleto FROM employees;
END//

