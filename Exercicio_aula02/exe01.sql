-- Criando o Banco de Dados
CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE td_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    funcao varchar(255),
    data_nascimento date,
    salario decimal not null,
    primary key (id)
);

-- Inserindo dados na tabela
INSERT INTO td_colaboradores(nome, funcao, data_nascimento, salario)
VALUES ("Jhon", "Analista", "1998-11-14", 8000);

INSERT INTO td_colaboradores(nome, funcao, data_nascimento, salario)
VALUES ("Mike","Analista", "1995-04-12", 5000);

INSERT INTO td_colaboradores(nome, funcao, data_nascimento, salario)
VALUES ("Bruce","Analista", "1990-04-10", 5000);

INSERT INTO td_colaboradores(nome, funcao, data_nascimento, salario)
VALUES ("Simone","Gerente", "1980-04-13", 12000);

INSERT INTO td_colaboradores(nome, funcao, data_nascimento, salario)
VALUES ("Steve","Tester", "2000-04-14", 3500);

INSERT INTO td_colaboradores(nome, funcao, data_nascimento, salario)
VALUES ("Marcos","Estagiario", "2004-04-15", 1200);

-- Visualiza dados
SELECT * FROM td_colaboradores;

-- Consultas e alteração pedida
SELECT nome FROM td_colaboradores WHERE salario > 2000;

SELECT nome FROM td_colaboradores WHERE salario < 2000;

UPDATE td_colaboradores SET salario = 1500 WHERE id = 1;

-- Visualiza alterações
SELECT * FROM td_colaboradores;