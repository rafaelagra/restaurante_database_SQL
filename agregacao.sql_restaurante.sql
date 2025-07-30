use restaurante;

# AGREGAÇÕES #

-- Calcule a quantidade de pedidos
SELECT COUNT(quantidade) from pedidos;

-- Calcule a quantidade de clientes únicos que realizaram pedidos
SELECT COUNT(DISTINCT id_cliente) from pedidos;

-- Calcule a média de preço dos produtos
SELECT AVG(preco) from produtos;

--  Calcule o mínimo e máximo do preço dos produtos
SELECT MIN(preco) from produtos;
SELECT MAX(preco) from produtos;

-- Selecione o nome e o preço do produto e faça um rank dos 5 produtos mais caros
SELECT nome, preco, ROW_NUMBER() OVER (ORDER BY preco DESC) AS ranking_preco FROM produtos LIMIT 5;

-- Selecione a média dos preços dos produtos agrupados por categoria
SELECT categoria,AVG(preco) AS media_preco from produtos GROUP BY categoria;

-- Selecionar o fornecedor e a quantidade de produtos que vieram daquele fornecedor da informações de produtos
SELECT 
	fornecedor,
    COUNT(*) AS quantidade_produtos
FROM 
	info_produtos
GROUP BY 
	fornecedor;

-- Selecionar os fornecedores que possuem mais de um produto cadastrado
SELECT
	fornecedor,
    COUNT(*) AS quantidade_produtos
FROM
	info_produtos
GROUP BY
	fornecedor
HAVING 
	COUNT(*) > 1;
    
-- Selecionar os clientes que realizaram apenas 1 pedido
SELECT
	nome,
    COUNT(*) AS quantidade_clientes
FROM
	clientes
GROUP BY
	id_cliente
HAVING
	COUNT(*) = 1;

