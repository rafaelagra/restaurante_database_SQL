use restaurante;

-- Selecionando o nome e a categoria dos produtos que tem o preço superior a 30
select nome, categoria
FROM produtos
WHERE preco > 30;

-- Selecionando o nome, telefone e data de nascimento dos clientes que nasceram antes do ano de 1985
select nome, telefone, data_nascimento
from clientes
where data_nascimento < '1985-01-01';

-- Selecionando o id do produto e os ingredientes de informações de produto para os ingredientes que contenham a palavra “carne”
select id_produto, ingredientes
from info_produtos
where ingredientes LIKE '%Carne%';

-- Selecionando o nome e a categoria dos produtos ordenados em ordem alfabética por categoria, para cada categoria deve ser ordenada pelo nome do produto
select nome, categoria
from produtos 
order by categoria asc, nome asc;

-- Selecionando os 5 produtos mais caros do restaurante;
select nome, preco
from produtos
order by preco desc
limit 5;

-- A cada dia da semana 2 pratos principais estão na promoção, hoje deve-se selecionar 2 produtos da categoria ‘Prato Principal’ e pular 6 registros (offset = 5)
select nome, categoria, preco
from produtos
where categoria = 'prato principal'
order by nome
limit 2
offset 5;

-- Fazendo backup dos dados da tabela pedidos com o nome de backup_pedidos
create table backup_pedidos as select * from pedidos;