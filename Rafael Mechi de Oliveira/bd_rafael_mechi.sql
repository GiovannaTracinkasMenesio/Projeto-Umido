create table endereco (
    id_endereco int primary key auto_increment,
    estado varchar(25) not null,
    cidade varchar(100) not null,
    cep varchar(10)
);

create table usuario (
    id int primary key auto_increment,
    nome varchar(100) not null,
    cpf varchar(14) not null unique,
    email varchar(100) not null unique,
    senha varchar(255) not null,
    endereco_id int,
    foreign key (endereco_id) references endereco(id_endereco)
);

create table plantacao (
    id_plantacao int primary key auto_increment,
    id_usuario int not null,
    tipo varchar(50) not null,
    area float not null,
    foreign key (id_usuario) references usuario(id)
);

create table dispositivo (
    id_dispositivo int primary key auto_increment,
    id_usuario int not null,
    modelo varchar(50) not null default 'arduino uno r3',
    data_instalacao date not null,
    foreign key (id_usuario) references usuario(id)
);

create table monitoramento (
    id_monitoramento int primary key auto_increment,
    id_dispositivo int not null,
    data_hora datetime not null,
    umidade float not null,
    temperatura float not null,
    foreign key (id_dispositivo) references dispositivo(id_dispositivo)
);
