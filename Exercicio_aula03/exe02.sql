-- Cria o Banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Seleciona o Banco de dados para uso
USE db_pizzaria_legal;

-- Cria a tabela Categoria
CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(255) NOT NULL,
  tamanho VARCHAR(255),
  PRIMARY KEY (id)
  );


-- Cria a tabela Pizza
CREATE TABLE tb_pizzas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  borda VARCHAR(255) NOT NULL,
  complemento VARCHAR(255) NOT NULL,	
  preco DECIMAL(6,2) NOT NULL,
  categoria_id BIGINT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
  );
  
  
-- Insere dados na tabela Categoria
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Brotinho");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Media");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Familia");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce", "Media");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce", "Grande");


-- Lista todas as Categoria
SELECT * FROM tb_categorias;


-- Insere dados na tabela Pizza
INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Calabresa", "Catupiri", "Molho extra", 30.00, 1);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Muzzarella", "Cheddar", "Molho extra", 60.00, 2);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Pepperoni", "Sem borda", "Molho extra", 120.00, 3);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Chocolate", "Leite Condensado", "M&Ms", 50.00, 4);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Doce de leite", "Nutella", "Granulado", 80.00, 5);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Portuguesa", "Catupiri", "Molho extra", 40.00, 1);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Frango com Catupiri", "Cheddar", "Queijo extra", 70.00, 2);

INSERT INTO tb_pizzas(nome, borda, complemento, preco, categoria_id) 
VALUES ("Presunto", "Sem Borda", "Molho extra", 130.00, 3);



-- Lista todas as Pizza
SELECT * FROM tb_pizzas;


-- Consultas pedida
SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.classe_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.classe_id
WHERE tb_pizzas.tipo = "Doce";

