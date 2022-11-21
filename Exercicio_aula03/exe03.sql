-- Cria o Banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Seleciona o Banco de dados para uso
USE db_pizzaria_legal;

-- Cria a tabela Categoria
CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(255) NOT NULL,
  tamanho VARCHAR(255),
  PRIMARY KEY (id)
  );


-- Cria a tabela Produtos
CREATE TABLE tb_produtos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  marca VARCHAR(255) NOT NULL,
  quantidade INT,	
  preco DECIMAL(6,2) NOT NULL,
  categoria_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
  );
  
  
-- Insere dados na tabela Categoria
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Remedio", "Injetavel");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Cosmetico", "Creme");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Higiene Pessoal", "Aerosol");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Fralda", "Pacote");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Vitaminas", "Drageas");


-- Lista todas as Categoria
SELECT * FROM tb_categorias;


-- Insere dados na tabela Produtos
INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Dipirona", "Medly", 10, 6.00, 1);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Battom", "Mulher Bonita", 5, 12.00, 2);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Desodorante", "Dove", 2, 15.00, 3);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Fralda", "Pampers", 12, 30.00, 4);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Centrum", "Bayer", 30, 50.00, 5);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Neusaldina", "Medly", 4, 2.00, 1);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Creme dental", "Colgate", 3, 8.00, 3);

INSERT INTO tb_produtos(nome, marca, quantidade, preco, categoria_id) 
VALUES ("Fralda Pacotao", "Turma da Monica", 60, 80.00, 4);


-- Lista toda tabela Produtos
SELECT * FROM tb_produtos;


-- Consultas pedida
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.classe_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.classe_id
WHERE tb_produtos.tipo = "Cosmetico";

