/* exercício_bd1: */

CREATE TABLE cliente (
    cod integer PRIMARY KEY,
    nome varchar(100),
    telefone integer,
    cpf_cnpj integer
);

CREATE TABLE pedido (
    num_pedido integer PRIMARY KEY,
    vlr_total numeric,
    cod_cliente integer
);

CREATE TABLE produto (
    cod integer PRIMARY KEY,
    nome varchar(50),
    vlr_unitario numeric
);

CREATE TABLE item_pedido (
    num_pedido integer,
    cod_produto integer,
    qtdd integer,
    vlr_item numeric
);
 
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_2
    FOREIGN KEY (cod_cliente)
    REFERENCES cliente (cod);
 
ALTER TABLE item_pedido ADD CONSTRAINT FK_item_pedido_1
    FOREIGN KEY (num_pedido)
    REFERENCES pedido (num_pedido);
 
ALTER TABLE item_pedido ADD CONSTRAINT FK_item_pedido_2
    FOREIGN KEY (cod_produto)
    REFERENCES produto (cod);
    
   
-- DML
-- Estrutura select 
   
select *
from cliente 

select *
from produto
   
-- especificar atributos
   
select cod, nome
from cliente

-- Estrutura insert
-- criando conteudo cliente

insert
into cliente (cod, nome, telefone, cpf_cnpj)
values (1, 'João Silva', 999028, 743995)

insert
into cliente (cod, nome, telefone, cpf_cnpj)
values (2, 'José Augusto', 994568, 459995)

insert
into cliente (cod, nome, telefone, cpf_cnpj)
values (3, 'Maria Antoni', 994098, 452295)

insert
into cliente (cod, nome, telefone, cpf_cnpj)
values (4, 'Mauro Santos', 498568, 432095)

insert
into cliente (cod, nome, telefone, cpf_cnpj)
values (5, 'Marcos José', 456098, 490995)

insert
into cliente (cod, nome, telefone, cpf_cnpj)
values (6, 'Marcos Leandro', 908098, 234995)

-- criando conteudo produto

insert
into produto (cod, nome, vlr_unitario)
values (1, 'Porta', 123.43)

insert
into produto (cod, nome, vlr_unitario)
values (2, 'Janela', 243.99)

insert
into produto (cod, nome, vlr_unitario)
values (3, 'Armario', 823.90)

insert
into produto (cod, nome, vlr_unitario)
values (4, 'Geladeira', 3143.53)

insert
into produto (cod, nome, vlr_unitario)
values (5, 'Fogão', 2153.73)

insert
into produto (cod, nome, vlr_unitario)
values (6, 'Sofa', 2453.90)

   
   