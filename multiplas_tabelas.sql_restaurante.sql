use restaurante;

-- Selecionar: produtos: id, nome e descrição // info_produtos:  ingredientes
SELECT produtos.nome, produtos.id_produto, produtos.descricao
FROM produtos
INNER JOIN info_produtos
ON produtos.id_produto =info_produtos.id_info;

--  Selecionar: pedidos:  id, quantidade e data // clientes: nome e email
SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido,
 clientes.nome AS cliente, clientes.email
FROM pedidos
INNER JOIN clientes
ON pedidos.id_pedido = clientes.id_cliente;

-- Selecionar: pedidos:  id, quantidade e data // clientes: nome e email // funcionarios: nome
SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido, 
clientes.nome AS cliente, clientes.email, 
funcionarios.nome AS funcionario
FROM pedidos
INNER JOIN clientes ON pedidos.id_pedido = clientes.id_cliente
INNER JOIN funcionarios ON pedidos.id_pedido = funcionarios.id_funcionario;

-- Selecionar: pedidos:  id, quantidade e data // clientes: nome e email // funcionarios: nome // produtos: nome, preco
SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido,
clientes.nome AS cliente, clientes.email AS email_cliente,
funcionarios.nome AS funcionário,
produtos.nome AS nome_produto, produtos.preco
FROM pedidos
INNER JOIN clientes ON  pedidos.id_pedido = clientes.id_cliente
INNER JOIN funcionarios ON pedidos.id_pedido = funcionarios.id_funcionario
INNER JOIN produtos ON pedidos.id_pedido = produtos.id_produto;

-- Selecionar o nome dos clientes com os pedidos com status ‘Pendente’ e exibir por ordem descendente de acordo com o id do pedido
SELECT clientes.nome AS cliente, pedidos.status AS status_pedido,  pedidos.id_pedido AS id_pedido
FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
WHERE status = 'Pendente'
ORDER BY pedidos.id_pedido desc;

-- Selecionar clientes sem pedidos
SELECT c.*
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;

-- Selecionar o nome do cliente e o total de pedidos cada cliente
SELECT nome,
		(SELECT COUNT(*) FROM pedidos WHERE pedidos.id_cliente = clientes.id_cliente) AS total_pedidos
FROM clientes;

-- Selecionar o preço total (quantidade*preco) de cada pedido
SELECT pe.id_pedido, c.nome,
	SUM(p.preco * pe.quantidade) AS preco_total
FROM clientes c
INNER JOIN pedidos pe ON c.id_cliente = pe.id_cliente
INNER JOIN produtos p ON pe.id_produto = p.id_produto
GROUP BY pe.id_pedido, c.nome;


