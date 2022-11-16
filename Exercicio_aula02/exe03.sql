-- Criando o Banco de Dados
CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE td_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
	serie int,
    turno varchar(255),
    nota decimal(3,1) not null,
    primary key (id)
);

-- Inserindo dados na tabela
INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("Ozzy Osbourne", 5, "Matutino", 4.0);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("Tommi Iommy", 6, "Matutino", 8.0);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("Geezer Butler", 5, "Vespertino", 6.5);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("Bill Ward", 7, "Noturno", 5.5);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("John Lennon", 6, "Matutino", 9.0);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("Paul McCartney", 5, "Vespertino", 8.0);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("George Harrison", 8, "Matutino", 10.0);

INSERT INTO td_estudantes(nome, serie, turno, nota)
VALUES ("Ringo Starr", 5, "Matutino", 7.0);



-- Visualiza dados
SELECT * FROM td_estudantes;

-- Consultas e alteração pedida
SELECT nome FROM td_estudantes WHERE nota > 7.0;

SELECT nome FROM td_estudantes WHERE nota < 7.0;

UPDATE td_estudantes SET nota = 8.5 WHERE id = 3;

-- Visualiza alterações
SELECT * FROM td_estudantes;

