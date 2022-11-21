-- Cria o Banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- Seleciona o Banco de dados para uso
USE db_curso_da_minha_vida;

-- Cria a tabela Categorias
CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome  VARCHAR(255),
  ativa BOOLEAN,
  PRIMARY KEY (id)
  );


-- Cria a tabela Produtos
CREATE TABLE tb_cursos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  descricao VARCHAR(255),
  turno VARCHAR(50),	
  preco DECIMAL(8,2),
  categoria_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
  );
  
  
-- Insere dados na tabela Categorias
INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Programação", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Idiomas", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Gestão", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Ferramentas de escritório", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Marketing", true);


-- Insere dados na tabela Produtos
INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Java iniciante", "curso básico", "noturno", 40, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Inglês básico", "curso introdutório", "noturno", 44, 2);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Metodologia SCRUM", "metodologia ágil", "matutino", 34, 3);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Pacote office", "básico do office", "matutino", 42, 4);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Vendas", "melhorar vendas", "noturno", 60, 5);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Javascript iniciante", "curso básico", "vespertino", 66, 1);

INSERT INTO tb_cursos (nome, descricao, turno, preco, categoria_id) 
VALUES ("Espanhol básico", "curso introdutório", "integral", 70, 2);


-- Lista todas as Categoria
SELECT * FROM tb_categorias;


-- Lista todas as Pizza
SELECT * FROM tb_cursos;


-- Consultas pedida
SELECT * FROM tb_cursos WHERE preco > 50.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";



SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categoria.id;


SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categoria.id
WHERE tb_categorias.id = 1;

