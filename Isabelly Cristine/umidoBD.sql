CREATE DATABASE umido;
USE umido;

CREATE TABLE plano (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    tipo_plano VARCHAR(20),
    valor DECIMAL(10,2)
);

CREATE TABLE tipo_plantacao (
    id_tipo_plantacao INT PRIMARY KEY AUTO_INCREMENT,
    tipo_plantacao VARCHAR(20)
);

CREATE TABLE endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    uf VARCHAR(2) NOT NULL,
    cep CHAR(9) NOT NULL,
    logradouro VARCHAR(70),
    nome_logradouro VARCHAR(70),
    numero_logradouro VARCHAR(10),
    bairro VARCHAR(50)
);

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    id_endereco INT,
    id_plano INT,
    id_tipo_plantacao INT,
    cnpj CHAR(14) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(70) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL,
    dt_nascimento DATE NOT NULL,
    senha VARCHAR(25) NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco),
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano),
    FOREIGN KEY (id_tipo_plantacao) REFERENCES tipo_plantacao(id_tipo_plantacao)
);

CREATE TABLE arduino (
    id_arduino INT PRIMARY KEY AUTO_INCREMENT,
    nome_arduino VARCHAR(50),
    umidade FLOAT,
    temperatura FLOAT,
    minimo_umidade FLOAT,
    maxima_temperatura FLOAT
);
