-- LEFT JOIN: retorna TODOS os dados da tabela da esquerda e os necessários da direta
	-- também chamado de LEFT OUTER JOIN
    
USE constraints
-- INSERT INTO usuario(nome, idade) VALUES ('José', 55);

SELECT usuario.id, enderecos.*
FROM usuario
LEFT OUTER JOIN enderecos
ON usuario.id = enderecos.id