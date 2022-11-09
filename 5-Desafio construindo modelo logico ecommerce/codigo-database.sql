-- criando banco de dados para o cenário de e-commerce
use ecommerce;
 
-- criar tabela cliente
create table cliente (
	idCliente int auto_increment primary key,
	fname varchar(10),
	Mint char(3),
	Lname varchar(30),
	identificacao char(11) not null,
	endereco varchar(30),
	constraint unique_cpf_cliente unique (identificacao) 
);

-- criar tabela produto 
create table produto (
	idProduto int auto_increment primary key,
	categoria enum('Eletrônico', 'Vestimentas','Brinquedos', 'Alimentação', 'Higiene Pessoal', 'Beleza','Moveis') not null,
	classification_kids bool default false,
	descricao varchar(200),
	Pname varchar(30),
	avaliacao float default 0,
	dimensoes varchar(100)
);
-- criar pagamento 
create table pix(
	idPix int primary key,
	idQrCode bigint
);

create table cartao(
	idCartao int primary key,
	validade date,
	debito bool default false,
	credito bool default false 
);

create table boleto_bancario (
	idBoleto int primary key,
	codigoBarras varchar(48)
);

create table pagamento(
	idPagamento int auto_increment primary key,
	idCliente int,
	idCartao int,
	idPix int,
	idBoleto int,
	valor float,
	constraint fk_pagamento_cliente foreign key (idCliente) references cliente(idCliente),
	constraint fk_pagamento_cartao foreign key (idCartao) references cartao(idCartao),
	constraint fk_pagamento_pix foreign key (idPix) references pix(idPix),
	constraint fk_pagamento_boleto foreign key (idBoleto) references boleto_bancario(idBoleto)
);

-- criar tabela pedido
create table pedido (
	idPedido int auto_increment primary key,
	IdPedidoCliente int,
	pedidoStatus enum('Cancelado', 'Confirmado', 'A caminho', 'Em processamento') default 'Em processamento',
	descricaoPedido varchar(255), 
	frete float default 10, 
	constraint fk_pedido_cliente foreign key (idPedidoCliente) references cliente(IdCliente),
	idPagamento int
);

-- criar tabela estoque
create table estoque (
	idEstoque int primary key auto_increment,
	idProdEstoque int primary key,
	Quantidade int not null default 0,
	localEstoque varchar(255) not null
);

-- criar tabela fornecedor 
create table fornecedor (
	idFornecedor int auto_increment primary key,
	razaoSocial varchar(100) not null,
	CNPJ char(15) unique not null default 0,
    contato char(11) not null
);

-- criar tabela vendedor 
create table vendedor (
	idVendedor int auto_increment primary key,
	razaoSocial varchar(100) not null,
	nomeFantasia varchar(100) not null, 
	endereco varchar(100),
	identificacao varchar(15) unique not null
);

create table produto_vendedor(
	idProdVend int,
	idProduto int,
	prodQuant int not null default 1,
	primary key (idProdVend, idProduto),
	constraint fk_vendedor_produto foreign key (idProdVend) references vendedor(idVendedor),
	constraint fk_produto_produto foreign key (idProduto) references produto(idProduto)
);

create table produto_estoque(
	idProdEstoq int,
	idEstoq int,
    quatidade int not null,
	endereco varchar(100) not null default 1,
    poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
	primary key (idProdEstoq, idEstoq),
	constraint fk_estoque_produto foreign key (idProdEstoq) references estoque(idProdEstoque),
	constraint fk_produto_ foreign key (idEstoq) references estoque(idEstoque)
);