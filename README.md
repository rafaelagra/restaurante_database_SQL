🍽️ SISTEMA DE GERENCIAMENTO DE UM RESTAURANTE COM MYSQL:
Este projeto apresenta um sistema de banco de dados relacional completo, desenvolvido no MySQL Workbench, para a gestão eficiente de um restaurante. Ele foi construído de forma modular, com cada etapa prática focada no desenvolvimento de habilidades essenciais em SQL e modelagem de dados.

🌟 VISÃO GERAL DO PROJETO:
O objetivo deste projeto é simular um ambiente de banco de dados para um restaurante, gerenciando informações de funcionários, clientes, produtos, pedidos e detalhes específicos de produtos. Através de uma série de exercícios práticos, foram implementadas as principais funcionalidades de um SGBD, desde a criação do esquema até consultas complexas e otimização, demonstrando uma compreensão aprofundada de MySQL.

🚀 HABILIDADES DESENVOLVIDAS:
Este projeto serviu como um laboratório prático para aprofundar conhecimentos e habilidades em SQL, abordando os seguintes tópicos de forma modular:

MODELAGEM E DEFINIÇÃO DE ESQUEMA (DDL):
Criação de bancos de dados e tabelas (CREATE DATABASE, CREATE TABLE).
Definição de tipos de dados apropriados (VARCHAR, INT, DECIMAL, DATE, TEXT).
Configuração de chaves primárias (PRIMARY KEY) e auto-incremento (AUTO_INCREMENT).
Estabelecimento de relacionamentos entre tabelas usando chaves estrangeiras (FOREIGN KEY).
A estrutura do banco de dados e a definição das tabelas são os primeiros passos demonstrados no projeto.

MANIPULAÇÃO DE DADOS (DML):
Inserção de registros em tabelas (INSERT INTO).
Atualização de dados existentes (UPDATE).
Exclusão de registros (DELETE).
Este módulo demonstra a capacidade de popular e gerenciar os dados do restaurante de forma eficaz.

CONSULTAS FUNDAMENTAIS (SELECT):
Seleção de dados específicos de uma ou múltiplas colunas.
Filtragem de resultados com cláusulas WHERE (incluindo operadores de comparação e lógicos AND, OR).
Ordenação de resultados (ORDER BY com ASC e DESC).
Limitação de resultados (LIMIT e OFFSET).
Criação de backups de tabelas (CREATE TABLE AS SELECT).
Exploração de dados através de consultas básicas para extrair informações relevantes.

CONSULTAS CONDICIONAIS E TRATAMENTOS NULOS:
Uso de operadores como LIKE e NOT LIKE para busca de padrões.
Utilização de IN para múltiplos valores.
Consultas com BETWEEN para intervalos.
Identificação e tratamento de valores nulos (IS NULL, IS NOT NULL).
Funções condicionais como IFNULL para substituição de valores nulos.
Uso de CASE para criar lógicas condicionais complexas nas consultas.
Demonstra a aplicação de lógica condicional para refinar e tratar os dados.

FUNÇÕES DE AGREGAÇÃO E AGRUPAMENTO:
Cálculo de contagens (COUNT), médias (AVG), valores mínimos (MIN) e máximos (MAX).
Agrupamento de dados (GROUP BY) para análises sumarizadas.
Filtragem de grupos com HAVING.
Utilização de funções de janela (ROW_NUMBER() OVER) para ranqueamento de dados.
Habilidade em extrair insights e resumos de grandes volumes de dados.

CONSULTAS COM MÚLTIPLAS TABELAS (JOINs e Subconsultas):
Combinação de dados de diferentes tabelas usando INNER JOIN.
Identificação de registros sem correspondência em outras tabelas (LEFT JOIN com IS NULL).
Realização de subconsultas (SELECT aninhados) para obter dados mais complexos.
Cálculo de totais de pedidos por cliente.
Competência em integrar informações de diferentes fontes para obter uma visão completa.

CONSULTAS AVANÇADAS E OTIMIZAÇÃO:
Criação e atualização de VIEWS para simplificar consultas complexas e proporcionar uma camada de abstração aos dados.
Desenvolvimento de STORED FUNCTIONS para encapsular lógicas de negócios e reutilizar código SQL.
Uso de recursos avançados do SQL para melhorar a eficiência e a organização das consultas.

⚙️ Esquema do Banco de Dados
O banco de dados restaurante é composto pelas seguintes tabelas e seus respectivos relacionamentos:

funcionarios: Armazena dados dos colaboradores (nome, CPF, cargo, salário, etc.).

clientes: Contém informações dos clientes (nome, CPF, contato, etc.).

produtos: Detalhes dos itens do menu (nome, descrição, preço, categoria).

info_produtos: Informações adicionais dos produtos, como ingredientes e fornecedor.

pedidos: Registra os pedidos realizados, conectando clientes, funcionários e produtos.

🤝 Contribuição
Contribuições são muito bem-vindas! Se você tem ideias para melhorias, novas funcionalidades ou encontrou algum problema, por favor:

Faça um fork do projeto.

Crie uma nova branch (git checkout -b feature/AmazingFeature).

Commit suas mudanças (git commit -m 'Add some AmazingFeature').

Faça um push para a branch (git push origin feature/AmazingFeature).

Abra um Pull Request.
