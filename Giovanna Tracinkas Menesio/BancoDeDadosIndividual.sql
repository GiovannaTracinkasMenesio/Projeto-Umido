create database sprint1; 
use sprint1; 

create table usuario (
idUsuario  int primary key auto_increment,
cpf                  varchar(15) not null,
dtNasc                      date not null,
nomeCompleto         varchar(55) not null
);

-- adicionar Endereço na tabela usuario e numero de telefone e e-mail
alter table usuario add column endereco varchar(50) not null; 
alter table usuario add column numTelefone varchar(12);
alter table usuario add column email varchar(50); 

create table plantacao (
tipoPlantacao   varchar(40) not null,
hectaresPlantacao        int not null
);

-- alterar a tabela platacao e adicionar primary key
alter table plantacao add column idPlantacao int primary key; 
-- alterar a tabela plantacao e adicionar uma foreign key para fazer o relacionamento entre as duas tabelas
alter table plantacao add column fkplantacao int not null; 
alter table plantacao rename column fkplantacao to fkusuario; 
alter table plantacao add foreign key (fkusuario) references usuario(idUsuario); 


create table dadosArduino (
porcentagemUmidade       int primary key, 
porcentagemTemperatura      int not null
);

-- alterar tabela dadosArduino e adicionar foreign key para tabela plantacao
alter table dadosArduino drop primary key; 
alter table dadosArduino add column idDadosArduino int primary key; 
alter table dadosArduino add column fkplantacao int; 
alter table dadosArduino add foreign key (fkplantacao) references plantacao(idPlantacao); 

-- adicionar coluna idPlantacao na tabela Plantacao 
alter table plantacao add column idPlantacao int primary key auto_increment; 

desc plantacao; 
insert into usuario (cpf, dtNasc, nomeCompleto, email, numTelefone, endereco)
values              ('12345678901', '1990-01-01', 'João Silva', 'joao.silva@example.com', '11987654321', 'Rua A, 123, Bairro X, Cidade Y'),
                    ('23456789012', '1985-02-20', 'Maria Oliveira', 'maria.oliveira@example.com', '21976543210', 'Av. B, 456, Bairro Z, Cidade W'),
                    ('34567890123', '2000-03-15', 'Carlos Pereira', 'carlos.pereira@example.com', '31965432109', 'Rua C, 789, Bairro Y, Cidade Z'),
                    ('45678901234', '1992-07-10', 'Ana Costa', 'ana.costa@example.com', '41954321098', 'Rua D, 101, Bairro W, Cidade X');

insert into plantacao (tipoPlantacao, hectaresPlantacao, fkusuario) values 
	('Soja', 100, 1),
	('Milho', 50, 2),
	('Café', 200, 3),
	('Trigo', 75, 4); 
    
-- alterar a tabela dadosArduino e colocar auto_increment em IdDadosArduino 
alter table dadosArduino modify column idDadosArduino int primary key auto_increment; 
  
desc dadosArduino; 
-- inserir dados na tabela dadosArduino
insert into dadosArduino (porcentagemUmidade, porcentagemTemperatura, fkplantacao) 
values  (75, 25, 1),  
        (60, 30, 2),  
        (80, 28, 3),  
        (65, 22, 4);  
        
        
select porcentagemUmidade as 'Porcentagem de Umidade:', 
case
      when porcentagemUmidade < 30 then 'Umidade Baixa!! PERIGO!!'
      else 'Umidade ideal!' 
end as 'Status de Umidade' from dadosArduino; 

-- inserir mais dados na tabela dadosArduino
desc dadosArduino; 
insert into dadosArduino (porcentagemUmidade, porcentagemTemperatura)
values (30, 25), (25,32);



