create database ecommerce;
use ecommerce;

create table cliente (
	idCliente int auto_increment primary key,
    Nome varchar(45) not null,
    identificação varchar(45) not null,
    endereço varchar(45)
);

create table cliente_cpf (
	idclientecpf int auto_increment primary key,
    nome varchar(45),
    CPF varchar(11)
);

create table pessoa_fisica (
	cliente_idcliente int,
    cliente_cpf_idclientecpf int,
    constraint fk_cliente_cliente_cpf foreign key(cliente_idcliente) references cliente(idcliente),
    constraint fk_cliente_cpf_cliente foreign key(cliente_cpf_idclientecpf) references cliente_cpf(idclientecpf)
);

create table cliente_cnpj (
	idclientecnpj int auto_increment primary key,
    nome varchar(45),
    CNPJ varchar(45)
);

create table pessoa_juridica (
	cliente_idcliente int,
    cliente_cnpj_idclientecnpj int,
    constraint fk_cliente_cliente_cnpj foreign key(cliente_idcliente) references cliente(idcliente),
    constraint fk_cliente_cnpj_cliente foreign key(cliente_cnpj_idclientecnpj) references cliente_cnpj(idclientecnpj)
);

create table pedido(
	idpedido int auto_increment primary key,
    status_do_pedido varchar(45),
    descrição varchar(45),
    cliente_idcliente int,
    frete float,
    constraint fk_pedido_cliente foreign key(cliente_idcliente) references cliente(idcliente)
);

create table forma_de_pagamento (
	idforma_de_pagamento int auto_increment primary key,
    forma_de_pagamento varchar(45),
    pedido_idpedido int,
    pedido_cliente_idcliente int,
    constraint fk_forma_de_pagamento_pedido foreign key(pedido_idpedido) references pedido(idpedido),
    constraint fk_pedido_forma_de_pagamento foreign key(pedido_cliente_idcliente) references pedido(cliente_idcliente)
);

create table produto (
	idproduto int auto_increment primary key,
    categoria varchar(45),
    descrição varchar(45),
    valor varchar(45)
);

create table relaçao_produto_pedido (
	produto_idproduto int,
    pedido_idpedido  int,
    quantidade varchar(45),
    constraint fk_relaçao_produto_pedido_produto foreign key(produto_idproduto) references produto(idproduto),
    constraint fk_produto_relaçao_produto_pedido foreign key(pedido_idpedido) references pedido(idpedido)
);

create table entrega (
	identrega int auto_increment primary key,
    status_da_entrega varchar(45),
    codigo_de_rastreio varchar(45),
    pedido_idpedido int,
    pedido_cliente_idcliente int,
    constraint fk_entrega_pedido foreign key(pedido_idpedido) references pedido(idpedido),
    constraint fk_pedido_entrega foreign key(pedido_cliente_idcliente) references pedido(cliente_idcliente)
);

create table fornecedor (
	idfornecedor int auto_increment primary key,
    razao_social varchar(45),
    cnpj varchar(45)
);

create table disponibilizando_produto (
	produto_idproduto int,
    fornecedor_idfornecedor int,
    constraint fk_disponibilizando_produto_produto foreign key(produto_idproduto) references produto(idproduto),
    constraint fk_disponibilizando_produto_fornecedor foreign key(fornecedor_idfornecedor) references fornecedor(idfornecedor)
);

create table estoque (
	idestoque int auto_increment primary key,
    local_estoque varchar(45),
    produtos varchar(45)
);

create table relaçao_produto_estoque (
	estoque_idestoque int,
    quantidade int,
    produto_idproduto int,
    constraint fk_relaçao_produto_estoque_estoque foreign key(estoque_idestoque) references estoque(idestoque),
    constraint fk_produto_relaçao_produto_estoque foreign key(produto_idproduto) references produto(idproduto)
);

create table terceiros_vendedor (
	idterceiros_vendedor int auto_increment primary key,
    razao_social varchar(45),
    local_vendedor varchar(45)
);

create table produtos_por_vendedor (
	terceiros_vendedor_idterceiros_vendedor int,
    fornecedor_idfornecedor int,
    constraint produtos_por_vendedor_terceiros_vendedor foreign key(terceiros_vendedor_idterceiros_vendedor) references terceiros_vendedor(idterceiros_vendedor),
    constraint produtos_por_vendedor_fornecedor foreign key(fornecedor_idfornecedor) references fornecedor(idfornecedor)
);


    
    

    
    