CREATE DATABASE ex_aula1;
USE ex_aula1;

CREATE TABLE fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao_fornecedor VARCHAR(255),
    cidade VARCHAR(255)
);

CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_fornecedor INT,
    nome_produto VARCHAR(255),
    preco DECIMAL(10, 2),
    FOREIGN KEY (codigo_fornecedor) REFERENCES fornecedores(id)
);

CREATE TABLE empregado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(14),
    cidade VARCHAR(255)
);

CREATE TABLE venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_produto INT,
    codigo_empregado INT,
    data_venda DATE,
    quantidade INT,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (codigo_produto) REFERENCES produto(id),
    FOREIGN KEY (codigo_empregado) REFERENCES empregado(id)
);

INSERT INTO fornecedores (descricao_fornecedor, cidade)
VALUES ('Fornecedor A', 'São Paulo'), 
       ('Fornecedor B', 'Rio de Janeiro'), 
       ('Fornecedor C', 'Belo Horizonte');
       
INSERT INTO produto (codigo_fornecedor, nome_produto, preco)
VALUES (1, 'Produto 1', 10.00), 
       (2, 'Produto 2', 20.00), 
       (3, 'Produto 3', 15.50);

INSERT INTO empregado (nome, cpf, cidade)
VALUES ('Empregado A', '123.456.789-00', 'São Paulo'), 
       ('Empregado B', '987.654.321-00', 'Campinas'), 
       ('Empregado C', '123.123.123-12', 'Rio de Janeiro');

INSERT INTO venda (codigo_produto, codigo_empregado, data_venda, quantidade, valor_total)
VALUES (1, 1, '2024-10-01', 2, 20.00), 
       (2, 2, '2024-10-02', 1, 20.00), 
       (3, 3, '2024-10-03', 3, 46.50);

SELECT * FROM fornecedores;

SELECT descricao_fornecedor, cidade FROM fornecedores;

SELECT id AS codigo_produto, codigo_fornecedor FROM produto;

SELECT id AS codigo, nome, cpf, cidade FROM empregado;

SELECT * FROM venda;





