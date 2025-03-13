create table usuario (
    id_usuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    senha varchar(100) not null
);

create table endereco (
    id_endereco int primary key auto_increment,
    id_usuario int not null,
    estado varchar(25) not null,
    cidade varchar(100) not null,
    cep varchar(10),

    foreign key (id_usuario) references usuario(id_usuario)
);

create table sensor (
    id_sensor int primary key auto_increment,
    tipo varchar(50) not null,
    modelo varchar(50),
    id_usuario int not null,

    foreign key (id_usuario) references usuario(id_usuario)
);

create table leitura_umidade (
    id_leitura int primary key auto_increment,
    id_sensor int not null,
    valor_umidade decimal(5, 2) not null,
    data_leitura datetime not null,

    foreign key (id_sensor) references sensor(id_sensor)
);

create table dispositivo (
    id_dispositivo int primary key auto_increment,
    tipo varchar(50) not null,
    modelo varchar(50),
    id_usuario int not null,

    foreign key (id_usuario) references usuario(id_usuario)
);

