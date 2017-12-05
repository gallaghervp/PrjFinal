
/* CRIAÇÃO DO BANCO DE DADOS */
CREATE DATABASE projetofinal;

/* USO DO BANCO DE DADOS */
USE projetofinal;

/*  CRIAÇÃO DA TABELA DOS USUÁRIOS */
CREATE TABLE clientes (
    id INT(5) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
	datanascimento VARCHAR(10) NOT NULL,
    cpf INT(11) NOT NULL,
    rg INT(10) NOT NULL,
    telefone INT(10) NOT NULL,
    email VARCHAR(20) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    endereco VARCHAR(20) NOT NULL,
	complemento VARCHAR (10) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    municipio VARCHAR(20) NOT NULL
);


/* CRIAÇÃO DA TABELA DOS PRODUTOS CADASTRADOS. O CÓDIGO SERÁ COLOCADO MANUALMENTE, SE POSSÍVEL,
 JÁ QUE NAO DEU PARA COLOCAR AUTO_INCREMENT */
CREATE TABLE produtos (
    codigobarra INT(20) NOT NULL,
    nome VARCHAR(10) NOT NULL,
    categoria VARCHAR(10) NOT NULL,
    preco INT(10) NOT NULL,
    disponivel BOOLEAN NOT NULL,
    imagem VARCHAR(10) NOT NULL,
    quantidade INT(10) NOT NULL
);


/* Tabela dos usuarios que terão acesso ao código do site, etc */
CREATE TABLE administrador (
    matricula INT(5) NOT NULL,
    nome VARCHAR(10) NOT NULL,
	nome VARCHAR(30) NOT NULL,
	datanascimento VARCHAR(10) NOT NULL,
    cpf INT(11) NOT NULL,
    rg INT(10) NOT NULL,
    telefone INT(10) NOT NULL,
    email VARCHAR(20) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    endereco VARCHAR(20) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    municipio VARCHAR(20) NOT NULL
);

/* tabela do tipo de categoria que os produtos ficarão armazenados: roupas, tenis, etc */
CREATE TABLE categoria (
    nome VARCHAR(10) NOT NULL,
    codigo INT(5) NOT NULL
);

/* tabela dOS FABRICANTES dos produtos que ficarão armazenados: roupas, tenis, etc */
CREATE TABLE fabricante (
    nome VARCHAR(10) NOT NULL,
    codigo INT(5) NOT NULL
);



