CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
 id BIGINT AUTO_INCREMENT,
 nome_categoria VARCHAR(255),
 ingressar CHAR,
 
 PRIMARY KEY(id)
);

CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
curso VARCHAR(255),
duracao VARCHAR(255),
valor int,
categoria_id BIGINT,

PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(nome_categoria,ingressar)VALUES("saude","sim");
INSERT INTO tb_categoria(nome_categoria ,ingressar)VALUES("Educação","sim");
INSERT INTO tb_categoria(nome_categoria ,ingressar)VALUES("Tecnologia","sim");
INSERT INTO tb_categoria(nome_categoria ,ingressar)VALUES("Segurança","sim");
INSERT INTO tb_categoria(nome_categoria ,ingressar)VALUES("humanas","sim");

SELECT * FROM tb_categoria;

INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Joana","Farmácia","2 anos",2300);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Paula","Medicina","5 anos",8300);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("João","bio-medicina","4 anos",3300);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Pedro","Calculo","2 anos",800);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Carlos","programação","1 ano",1000);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Henrique","Segurança no trabalho","1 ano",500);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Jose","Portugues","5 anos",200);
INSERT INTO tb_curso(nome,curso,duracao,valor,categoria_id)VALUES("Fernando","ingles","3 anos",200);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE valor>=500;

SELECT * FROM tb_curso WHERE valor<500;

SELECT * FROM tb_curso WHERE curso LIKE '%j%';

SELECT * FROM tb_curso
INNER JOIN tb_categoria
ON tb_categoria.id = tb_curso.categoria_id;

SELECT * FROM tb_curso
INNER JOIN tb_categoria
ON tb_categoria.id = tb_cursos.categoria_id
WHERE nome_categoria LIKE '%cursos%';