create database umido;
use umido;

create table plano(
	id_plano int primary key auto_increment,
	tipo_plano varchar(20),
    valor decimal(4,2)
);

create table tipo_plantacao(
	id_tipo_plantacao int primary key auto_increment,
	tipo_plantacao varchar(20)
);

create table endereco(
	id_endereco int primary key auto_increment,
    id_usuario int not null,
    uf varchar(2) not null,
    cep char(9) not null,
    logradouro varchar(70),
    nome_logradouro varchar(70),
    numero_logradouro varchar(70),
    bairro varchar(50)
);

create table usuario(
	id_usuario int primary key auto_increment,
    id_endereco int,
    id_plano int,
    id_tipo_plantacao int,
    cnpj char(14) not null,
    nome varchar(50) not null,
    email varchar(70) not null,
    telefone varchar(14) not null,
    dt_nascimento date not null,
    senha char(20) not null,
    foreign key (id_endereco) references endereco(id_endereco),
    foreign key (id_plano) references plano(id_plano),
    foreign key (id_tipo_plantacao) references tipo_plantacao(id_tipo_plantacao)
);

create table arduino (
	id_arduino int primary key auto_increment,
    nome_arduino varchar(50),
    umidade float,
    temperatura float,
    minimo_umidade float,
    máxima_temperatura float
);

