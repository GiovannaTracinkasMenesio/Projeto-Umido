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


-- inserts aqui 

-- Inserindo planos
INSERT INTO plano (tipo_plano, valor) VALUES
('Básico', 50.00),
('Intermediário', 100.00),
('Avançado', 150.00);

-- Inserindo tipos de plantação
INSERT INTO tipo_plantacao (tipo_plantacao) VALUES
('Soja'),
('Milho'),
('Café'),
('Trigo'),
('Algodão');

-- Inserindo endereços
INSERT INTO endereco (uf, cep, logradouro, nome_logradouro, numero_logradouro, bairro) VALUES
('SP', '01001-000', 'Rua', 'São Bento', '100', 'Centro'),
('MG', '30130-001', 'Avenida', 'Afonso Pena', '2000', 'Funcionários'),
('PR', '80010-010', 'Rua', 'XV de Novembro', '300', 'Centro'),
('RS', '90010-001', 'Avenida', 'Borges de Medeiros', '400', 'Centro Histórico'),
('BA', '40010-010', 'Rua', 'Carlos Gomes', '500', 'Dois de Julho');

-- Inserindo usuários
INSERT INTO usuario (id_endereco, id_plano, id_tipo_plantacao, cnpj, nome, email, telefone, dt_nascimento, senha) VALUES
(1, 1, 1, '12345678000101', 'Fazenda São João', 'fazendajoao@email.com', '(11) 9999-8888', '1980-01-01', 'senha123'),
(2, 2, 2, '23456789000102', 'Agropecuária Mineira', 'agromineira@email.com', '(31) 8888-7777', '1985-02-02', 'senha456'),
(3, 3, 3, '34567890000103', 'Café do Paraná', 'cafeparana@email.com', '(41) 7777-6666', '1990-03-03', 'senha789'),
(4, 1, 4, '45678901000104', 'Trigo Gaúcho', 'trigogaucho@email.com', '(51) 6666-5555', '1995-04-04', 'senha101'),
(5, 2, 5, '56789012000105', 'Algodão Baiano', 'algodao.baiano@email.com', '(71) 5555-4444', '2000-05-05', 'senha202');

-- Inserindo dados do Arduino
INSERT INTO arduino (nome_arduino, umidade, temperatura, minimo_umidade) VALUES
('Arduino 1', 45.5, 25.0, 30.0),
('Arduino 2', 50.0, 26.5, 30.0),
('Arduino 3', 55.5, 24.0, 30.0),
('Arduino 4', 60.0, 23.5, 30.0),
('Arduino 5', 65.5, 22.0, 30.0);