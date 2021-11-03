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