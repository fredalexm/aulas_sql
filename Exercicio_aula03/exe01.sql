-- Cria o Banco de dados
CREATE DATABASE db_generation_game_online;

-- Seleciona o Banco de dados para uso
USE db_generation_game_online;

-- Cria a tabela Classes
CREATE TABLE tb_classes (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome_classe VARCHAR(255) NOT NULL,
  tipo_classe VARCHAR(255),
  PRIMARY KEY (id)
  );


-- Cria a tabela Personagens
CREATE TABLE tb_personagens (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  ataque BIGINT NOT NULL,
  defesa BIGINT NOT NULL,	
  data_criacao DATE NOT NULL,
  classe_id BIGINT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
  );
  
  
-- Insere dados na tabela Classes
INSERT INTO tb_classes (nome_classe, tipo_classe) VALUES ("Arqueiro", "Longa Distancia");
INSERT INTO tb_classes (nome_classe, tipo_classe) VALUES ("Guerreiro", "Curta Distancia");
INSERT INTO tb_classes (nome_classe, tipo_classe) VALUES ("Trojan", "Curta Distancia");
INSERT INTO tb_classes (nome_classe, tipo_classe) VALUES ("Mago", "Longa Distancia");
INSERT INTO tb_classes (nome_classe, tipo_classe) VALUES ("Cavaleiro", "Curta Distancia");


-- Lista todas as Classes
SELECT * FROM tb_classes;


-- Insere dados na tabela Personagens
INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Hawkeye", 1500, 1200, "2022-11-01", 1);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Thor", 4500, 3000, "2022-10-15", 2);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Ragnar", 3000, 2600, "2022-11-01", 3);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Oz", 1800, 1000, "2022-09-10", 4);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Zorro", 3500, 2500, "2022-11-01", 5);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("GreenArrow", 1600, 1100, "2021-12-01", 1);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Wiliam Wallace", 4400, 3100, "2022-11-01", 2);

INSERT INTO tb_personagens(nome, ataque, defesa, data_criacao, classe_id) 
VALUES ("Kratos", 3200, 2800, "2022-11-01", 3);


-- Lista todos os Personagens
SELECT * FROM tb_personagens;


-- Consultas pedida
SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
WHERE tb_personagens.nome = "arqueiro";




