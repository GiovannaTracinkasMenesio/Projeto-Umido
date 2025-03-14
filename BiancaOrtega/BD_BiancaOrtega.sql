
 use sprint1; 

-- tabela de cadastro
create table cadastro ( 
idcad int primary key auto_increment, 
nome varchar(80) not null, 
email varchar(80) not null, 
senha varchar(20) not null, 
tel int, 
data date, 
cnpj int not null, 
cep int not null, 
cidade varchar(40) not null, 
funcao varchar(30) not null default 'cliente', 
plantacao varchar(50) not null, 
plant2 varchar(50), 
plant3 varchar(50) 
);

-- tabela de métricas
create table metrica ( 
id int primary key auto_increment, 
fkidcad int, 
umidade int, 
temp int, 
foreign key (fkidcad) references cadastro (idcad) 
);

-- tabela de sensores
create table sensores ( 
id_sensor int primary key auto_increment, 
tipo_sensor varchar(50) not null, 
localizacao varchar(100) not null, 
status varchar(20) not null, 
data_instalacao date not null 
); 
-- inserindo dados na tabela cadastro
insert into cadastro (nome, email, senha, tel, data, cnpj, cep, cidade, plantacao, plant2, plant3) values 
('João Silva', 'joao@email.com', '123456', 11987654321, '2025-03-14', 123456789, 12345678, 'São Paulo', 'Soja', 'Milho', 'Trigo'),
('Maria Oliveira', 'maria@email.com', 'senha123', 11998765432, '2025-03-12', 987654321, 87654321, 'Curitiba', 'Café', 'Cana-de-açúcar', 'Laranja'),
('Carlos Souza', 'carlos@email.com', 'pass123', 11911223344, '2025-03-10', 456123789, 65432198, 'Belo Horizonte', 'Milho', 'Feijão', 'Soja'),
('Ana Mendes', 'ana@email.com', 'ana456', 11955667788, '2025-03-08', 321789654, 54321987, 'Goiânia', 'Algodão', 'Sorgo', 'Milho'),
('Pedro Lima', 'pedro@email.com', 'pedro789', 11966778899, '2025-03-06', 159753456, 43219876, 'Porto Alegre', 'Trigo', 'Aveia', 'Cevada');

-- inserindo dados na tabela sensores
insert into sensores (tipo_sensor, localizacao, status, data_instalacao) values 
('DHT11', 'Fazenda Modelo - Setor A', 'ativo', '2025-03-01'),
('DHT22', 'Fazenda Experimental - Setor B', 'ativo', '2025-02-28'),
('SoilMoisture', 'Plantação de Café - Setor C', 'inativo', '2025-02-25'),
('Higrômetro', 'Plantação de Algodão - Setor D', 'ativo', '2025-02-20'),
('Termômetro Digital', 'Armazém de Grãos', 'ativo', '2025-02-15');

-- inserindo dados na tabela métricas
insert into metrica (fkidcad, umidade, temp) values 
(1, 45, 32),
(2, 60, 28),
(3, 35, 30),
(4, 50, 26),
(5, 40, 31);
