-- comando de criação de banco de dados

CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos(
   id BIGINT auto_increment,
   nome VARCHAR(255),
   preco DECIMAL(5,2),
   quantidade INT,
   marca VARCHAR(255),
   PRIMARY KEY(id) 
);

INSERT INTO produtos(nome,preco,quantidade,marca)VALUES("camiseta",19.90,5,"lacoste");

INSERT INTO produtos(nome,preco,quantidade,marca)VALUES("calça",800.90,45,"Kelvin");

INSERT INTO produtos(nome,preco,quantidade,marca)VALUES("Tenis",80.90,3,"Ardidas");

INSERT INTO produtos(nome,preco,quantidade,marca)VALUES("Meia",19.90,3,"lacoste");

INSERT INTO produtos(nome,preco,quantidade,marca)VALUES("Bone",123.90,5,"lacoste");
  -- todos os dados da tabela
SELECT*FROM produtos;
  -- produtos inferior a 500
SELECT*FROM produtos WHERE preco <=500;
   -- produtos maior que 500
SELECT*FROM produtos WHERE preco>=500;

