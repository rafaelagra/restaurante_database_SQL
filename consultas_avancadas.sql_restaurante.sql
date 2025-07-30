use restaurante;

-- Crie uma view chamada resumo_pedido do join entre essas tabelas: pedidos: id, quantidade e data//clientes: nome e email//funcionarios: nome//produtos: nome, preco
CREATE VIEW resumo_pedido AS 
SELECT
		p.id_pedido, p.quantidade, p.data_pedido,
		c.nome AS nome_cliente, c.email,
		f.nome AS nome_funcionario, 
		pr.nome AS nome_produto, pr.preco
FROM pedidos p 
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario
JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT * FROM resumo_pedido;

-- Selecione o id do pedido, nome do cliente e o total (quantidade * preco) de cada pedido da view resumo_pedido
SELECT
	id_pedido, nome_cliente,
    quantidade * preco AS total
FROM resumo_pedido;

-- Atualiza o view resumo pedido, adicionando campo total
DROP VIEW IF EXISTS resumo_pedido;

CREATE VIEW resumo_pedido AS
SELECT
    p.id_pedido,
    p.quantidade,
    p.data_pedido,
    c.nome AS nome_cliente,
    c.email,
    f.nome AS nome_funcionario,
    pr.nome AS nome_produto,
    pr.preco,
    (p.quantidade * pr.preco) AS total
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario
JOIN produtos pr ON p.id_produto = pr.id_produto;

-- Repita a consulta da questão 3, utilizando o campo total adicionado
SELECT 
	id_pedido, nome_cliente, total
FROM resumo_pedido;

-- Repita a consulta da pergunta anterior, com uso do EXPLAIN para verificar e compreender o JOIN que está oculto na nossa query
EXPLAIN
SELECT 
	id_pedido, nome_cliente, total
FROM resumo_pedido;

-- Crie uma função chamada ‘BuscaIngredientesProduto’, que irá retornar os ingredientes da tabela info produtos, quando passar o id de produto como argumento (entrada) da função.
DELIMITER //
CREATE FUNCTION BuscaIngredientesProduto(pid INT)
RETURNS TEXT 
DETERMINISTIC 
BEGIN 
	DECLARE ingredientes TEXT;
    SELECT i.ingredientes INTO ingredientes
    FROM info_produtos i 
    WHERE i.id_produto = pid;
    
    RETURN ingredientes;
END //

-- Execute a função ‘BuscaIngredientesProduto’ com o id de produto 10
SELECT BuscaIngredientesProduto(10) AS ingredientes;

-- Crie uma função chamada ‘mediaPedido’ que irá retornar uma mensagem dizendo que o total do pedido é acima, abaixo ou igual a média de todos os pedidos, quando passar o id do pedido como argumento da função
DELIMITER //

CREATE FUNCTION mediaPedido(pid INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE media DECIMAL(10,2);
    DECLARE valor DECIMAL(10,2);
    DECLARE msg VARCHAR(100);

    SELECT AVG(quantidade * preco) INTO media FROM pedidos;
    SELECT quantidade * preco INTO valor FROM pedidos WHERE id_pedido = pid;

    IF valor > media THEN
        SET msg = CONCAT('O valor do pedido é acima da média: R$ ', valor);
    ELSEIF valor < media THEN
        SET msg = CONCAT('O valor do pedido é abaixo da média: R$ ', valor);
    ELSE
        SET msg = CONCAT('O valor do pedido é igual à média: R$ ', valor);
    END IF;

    RETURN msg;
END //

DELIMITER ;

-- Execute a função ‘mediaPedido’ com o id de pedido 5 e depois 6.
SELECT mediapedido(5) AS resultado;
SELECT mediapedido(6) AS resultado;










