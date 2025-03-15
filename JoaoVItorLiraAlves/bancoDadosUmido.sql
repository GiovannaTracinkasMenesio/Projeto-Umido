create database umido;

use umido;

create table endereco(
	id_endereco int primary key auto_increment,
    cep char(8) not null,
    bairro varchar(50) not null,
    cidade varchar(40) not null
);

create table plantio(
	id_plantio int primary key auto_increment,
    tipo_plantacao varchar(30) not null
);

create table plano_umido(
	id_plano int primary key auto_increment,
    tipo_plano varchar(30) not null
);

create table usuario(
	id_usuario int primary key auto_increment,
	nome varchar(30) not null,
	email varchar(50) not null,
	telefone char(11),
	dt_nascimento date not null,
	cnpj char(14) not null,
	senha char(8) not null,
    id_plantio int,
    id_endereco int,
    id_plano int,
    foreign key (id_plantio) references plantio(id_plantio),
	foreign key (id_endereco) references endereco(id_endereco),
    foreign key (id_plano) references plano_umido(id_plano)
);

create table medicoes(
	id_medicoes int primary key auto_increment,
    id_usuario int,
    foreign key (id_usuario) references usuario(id_usuario),
    umidade float(5,2) not null,
    minimo_umidade float(5,2) not null
);

-- Inserção de dados:

-- Inserindo dados na tabela endereco
INSERT INTO endereco (cep, bairro, cidade) VALUES
('01001000', 'Centro', 'São Paulo'),
('20040002', 'Copacabana', 'Rio de Janeiro'),
('30110011', 'Savassi', 'Belo Horizonte');

-- Inserindo dados na tabela plantio
INSERT INTO plantio (tipo_plantacao) VALUES
('Milho'),
('Soja'),
('Cana-de-açúcar');

-- Inserindo dados na tabela plano_umido
INSERT INTO plano_umido (tipo_plano) VALUES
('Básico'),
('Premium'),
('Master');

-- Inserindo dados na tabela usuario
INSERT INTO usuario (nome, email, telefone, dt_nascimento, cnpj, senha, id_plantio, id_endereco, id_plano) VALUES
('João Silva', 'joao@email.com', '11987654321', '1985-06-15', '12345678000199', 'senha123', 1, 1, 1),
('Maria Oliveira', 'maria@email.com', '21987654321', '1990-08-20', '98765432000188', 'senha456', 2, 2, 2),
('Carlos Souza', 'carlos@email.com', '31987654321', '1978-03-10', '45678912000177', 'senha789', 3, 3, 3);

-- Inserindo dados na tabela medicoes
INSERT INTO medicoes (id_usuario, umidade, minimo_umidade) VALUES
(1, 75.50, 30.00),
(2, 80.20, 30.00),
(3, 68.30, 30.00);


select * from medicoes;