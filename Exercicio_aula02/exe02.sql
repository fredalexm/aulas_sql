-- Criando o Banco de Dados
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE td_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    valor decimal(6,2) not null,
    primary key (id)
);

-- Inserindo dados na tabela
INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Azeite de Oliva", 5, "2024-10-31", 12.90);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Queijo Minas", 8, "2022-12-31", 50.50);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Vinho Malbec", 15, "2099-12-31", 70.99);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Maça Nacional", 30, "2022-11-30", 5.00);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("iPhone 14", 3, "2099-12-31", 9000.00);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Boombox JBL", 5, "2099-12-31", 2499.00);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Geladeira Brastemp", 2, "2099-12-31", 5000.00);

INSERT INTO td_produtos(nome, quantidade, data_validade, valor)
VALUES ("Tenis Nike", 5, "2099-12-31", 600.00);


-- Visualiza dados
SELECT * FROM td_produtos;

-- Consultas e alteração pedida
SELECT nome FROM td_produtos WHERE valor > 500;

SELECT nome FROM td_produtos WHERE valor < 500;

UPDATE td_produtos SET valor = 1500 WHERE id = 6;

-- Visualiza alterações
SELECT * FROM td_produtos;


