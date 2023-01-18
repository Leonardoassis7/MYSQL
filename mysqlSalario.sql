CREATE DATABASE colabarador;

USE colaborador;

CREATE TABLE funcionarios (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    salario DECIMAL(9,2),
    idade int,
    tempo_de_empresa VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("leonardo","programador",5200.00,26,1); 

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("Paulo","programador",5200.00,28,1);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("Fernando","RH",2800.00,26,3);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("Ana","Gerente",6200.00,38,5);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("Gabriel","programador junior",2200.00,23,05);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("João","atendente",1800.00,22,3);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("Sabrina","atendente",1900.00,26,4);

INSERT INTO funcionarios(nome,cargo,salario,idade,tempo_de_empresa)VALUES("Diogo","segurança",1600.00,33,6);

SELECT*FROM funcionarios;
  -- salario inferior a 2000
SELECT*FROM salario WHERE preco<2000.00;
   -- salario maior que 2000
SELECT*FROM salario WHERE preco>2000.00;
