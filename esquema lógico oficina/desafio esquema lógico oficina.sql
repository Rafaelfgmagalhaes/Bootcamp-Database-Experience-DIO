create database oficina;
use oficina;

create table clientes (
	idclientes int not null auto_increment primary key,
    nome varchar(45),
    cpf varchar(15),
    veiculos_placa int,
    constraint fk_clientes_veiculos foreign key(veiculos_placa) references veiculos(placa)
);

create table veiculos (
	placa int not null primary key,
    marca varchar(20),
    modelo varchar(20)
);

create table equipe_mecanica (
	idequipe int not null auto_increment primary key,
    responsavel varchar(45)
);

create table mecanicos (
	idmecanicos int not null auto_increment primary key,
    nome varchar(45),
    especialidade varchar (45)
);

create table mecanicos_equipe (
	mecanicos_idmecanicos int,
    equipe_mecanica_idequipe int,
    constraint fk_mecanicos_equipe_mecanicos foreign key(mecanicos_idmecanicos) references mecanicos(idmecanicos),
    constraint fk_mecanicos_equipe_equipe_mecanica foreign key(equipe_mecanica_idequipe) references equipe_mecanica(idequipe)
);

create table mao_de_obra_pecas (
	idmao_de_obra_pecas int not null primary key,
    valor_pecas varchar(10),
    valor_mao_de_obra varchar (10)
);

create table ordem_de_serviço (
	idordem int not null auto_increment primary key,
    data_emissao date,
    data_conclusao date,
    valor_serviço  varchar(10),
    status_serviço varchar (45),
    veiculos_placa int,
    equipe_mecanica_idequipe int,
    mao_de_obra_pecas_idmao_de_obras_pecas int,
    constraint fk_ordem_de_serviço_veiculos foreign key(veiculos_placa) references veiculos(placa),
    constraint fk_ordem_de_serviço_equipe_mecanica foreign key(equipe_mecanica_idequipe) references equipe_mecanica(idequipe),
    constraint fk_ordem_de_serviço_mao_de_obra_pecas foreign key(mao_de_obra_pecas_idmao_de_obras_pecas) references mao_de_obra_pecas(idmao_de_obra_pecas)
);
