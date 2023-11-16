CREATE DATABASE BD_RH;
USE BD_RH;

CREATE TABLE colaboradores 
(
    registro INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(30) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    id_unidade INTEGER NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE beneficios
(
    id_beneficio INT AUTO_INCREMENT PRIMARY KEY,
    id_registro INT NOT NULL,
    descricao VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_registro) REFERENCES colaboradores(registro)
);

CREATE TABLE unidade
(
    registro INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(90) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    horario_funcionamento VARCHAR(20) NOT NULL
);

CREATE TABLE KPIs
(
    id INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    valor FLOAT NOT NULL,
    id_unidade INTEGER NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidade(registro)
);

SELECT * FROM colaboradores;