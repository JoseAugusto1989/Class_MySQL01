create table if not exists clientes(
	id integer not null auto_increment comment 'Código do Cliente',
	nome_cliente varchar(50)  not null default 'NÃO INFORMADO' comment 'Nome Cliente',
	cpf integer not null default 0 comment 'CPF do Cliente',
	endereco varchar(100) not null default 'NÃO INFORMADO' comment 'Endereço Cliente',
	telefone integer not null default 0 comment 'Telefone do Cliente',
	email varchar(50) not null default 'NÃO INFORMADO' comment 'Email do Cliente',
	primary key (id)
);

-- criando FK
alter table clientes
	add constraint fk_clientes
	foreign key (id)
	references pedidos (id)


create table if not exists pedidos(
	id integer not null auto_increment comment 'Identificação do Pedido',
	data_pedido date not null default '1899-12-31' comment 'Data do Pedido',
	preco_total double not null default 0.0 comment 'Preço Total do Produto',
	quantidade integer not null default 0 comment 'Quantidade',
	primary key (id)
);

-- criando FK
alter table pedidos
	add constraint fk_pedidos
	foreign key (id)
	references produtos (cod_produto)
	

create table if not exists produtos(
	cod_produto integer not null default 0 comment 'Código do Produto',
	preco_unidade double not null default 0.0 comment 'Preço Unitário',
	nome_produto varchar(50) not null default 'NÃO INFORMADO' comment 'Nome do Produto',
	data_validade date not null default '1899-12-31' comment 'Data de Validade',
	primary key (cod_produto)
);

-- criando FK
alter table produtos
	add constraint fk_produtos
	foreign key (cod_produto)
	references clientes (id)

