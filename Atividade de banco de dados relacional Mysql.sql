-- Exercicio 1

CREATE DATABASE db_servicos_RH;
USE db_servicos_RH;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
	idade INT,
	cargo VARCHAR(255),
	contato VARCHAR(255),
	salario DECIMAL(65, 3),
	PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, idade, cargo, contato, salario)
VALUES ("Fernanda Carvalho Silva", 40, "Analista de Recrutamento", "11987652234", 3.500);

INSERT INTO tb_colaboradores (nome, idade, cargo, contato, salario)
VALUES ("Amanda Pereira", 38, "Desenvolvedor Java Senior", "11943910475", 9.800);

INSERT INTO tb_colaboradores (nome, idade, cargo, contato, salario)
VALUES ("Jorge Amado", 30, "Desenvolvedor Java Pleno", "11998429837", 5.400);

INSERT INTO tb_colaboradores (nome, idade, cargo, contato, salario)
VALUES ("Patricia Santos Soledade", 26, "Desenvolvedora Java Jr", "11983719301", 2.700);

INSERT INTO tb_colaboradores (nome, idade, cargo, contato, salario)
VALUES ("Joao Almeida Carmo", 22, "Estagiario", "11976109834", 1.500);

SELECT * FROM tb_colaboradores WHERE salario > 2.000;
SELECT * FROM tb_colaboradores WHERE salario < 2.000;

UPDATE tb_colaboradores SET contato = "11998429837" WHERE id = 3;

SELECT * FROM tb_colaboradores;

-- Exercicio 2

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(255),
    marca VARCHAR(255),
    preco DECIMAL (65, 3),
    estoque INT,
    garantia VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Celular", "Apple", 4.500, 300, "1 ano");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Mouse", "Logitech", 150, 200, "6 meses");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Notebook", "Dell", 5.500, 100, "1 ano");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Televisao", "Samsung", 3.000, 50, "1 ano");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Videogame", "Sony Playstaion", 4.000, 40, "1 ano");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Teclado", "HyperX", 240, 60, "3 anos");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Monitor", "LG", 1.200, 90, "1 ano");

INSERT INTO tb_produtos (tipo, marca, preco, estoque, garantia)
VALUES ("Headset", "ASTRO Gaming", 1.900, 40, "1 ano");

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 150.00 WHERE id = 2;
UPDATE tb_produtos SET garantia = "3 anos" WHERE id = 8;


-- Exercicio 3

CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    idade INT,
    serie VARCHAR(255),
    faltas INT,
    nota DECIMAL(65, 1),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, idade, serie, faltas, nota)
VALUES("Carlos Antonio Jose", 16, "1 ano", 5, 7.5); 

INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Maria Oliveira Javier", 17, "3 ano", 2, 8.8);

INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Carolina Viana", 15, "1 ano", 1, 9.5);

INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Marcelo Costa Santos", 16, "2 ano", 7, 6.0);

INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Milena Silveira Alves", 16, "1 ano", 5, 7.5);  

INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Joao Antonio Barbosa", 17, "3 ano", 8, 6.5);

INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Camila Andrade Borges", 17, "2 ano", 3, 9.5); 
    
INSERT INTO tb_alunos (nome, idade, serie, faltas, nota)
VALUES("Gabriel Castro Lima", 16, "2 ano", 6, 8.5);  

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET faltas = 4 WHERE id = 8;

SELECT * FROM tb_alunos;