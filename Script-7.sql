create table categoria(
  id integer primary key not null,
  nome varchar(20)
)

create table produto(
  cod integer primary key not null,
  nome varchar(50),
  id_categoria integer,
  vlr_u numeric(10,2)
)

create table cliente(
  id integer primary key not null, 
  nome varchar(50), 
  cpf integer
)

create table faturamento(
  id_cliente integer, 
  id_produto integer,
  nf integer,
  qtd integer,
  vlr_t numeric(10,2)
)


alter table produto add constraint fk_categoria 
foreign key (id_categoria) references categoria(id);

alter table faturamento add constraint fk_cliente 
foreign key (id_cliente) references cliente(id);

alter table faturamento add constraint fk_produto 
foreign key (id_produto) references produto(cod);

alter table faturamento add constraint primary key (id_cliente, id_produto, nf);


-- categoria
select * from categoria;
insert into categoria values(1, 'Mercearia');
insert into categoria values(2, 'Bazar');
insert into categoria values(3, 'Higiene e Limpeza');
insert into categoria values(4, 'Hortfrut');

-- produto
select * from produto;
insert into produto values(1, 'Bombom Garoto', 1, 10.90);
insert into produto values(2, 'Arroz Risoto', 1, 17.90);
insert into produto values(3, 'Sabão em Pó', 3, 7.90);
insert into produto values(4, 'Tomate', 4, 4.59);
insert into produto values(5, 'Feijão Carioca', 1, 8.90);
insert into produto values(6, 'Óleo de Soja', 1, 6.90);
insert into produto values(7, 'Sabonete', 3, 2.95);
insert into produto values(8, 'Cebola', 4, 4.69);
insert into produto values(9, 'Macarrão', 1, 4.89);
insert into produto values(10, 'Molho', 1, 3.89);

-- cliente 
select * from cliente;
insert into cliente values(1, 'João', 111);
insert into cliente values(2, 'Maria', 222);
insert into cliente values(3, 'Pedro', 333);
insert into cliente values(4, 'Ana', 444);
insert into cliente values(5, 'Juca', 555);


-- faturamento
select * from faturamento;
insert into faturamento values(1, 1, 111, 2, 21.80);
insert into faturamento values(1, 2, 111, 1, 17.90);
insert into faturamento values(1, 6, 111, 1, 6.90);
insert into faturamento values(1, 8, 111, 1, 6.69);
insert into faturamento values(2, 10, 222, 1, 3.89);
insert into faturamento values(2, 9, 222, 1, 4.89);
insert into faturamento values(3, 3, 333, 1, 7.90);
insert into faturamento values(3, 7, 333, 5, 14.75);
insert into faturamento values(3, 5, 333, 1, 8.90);

-- qual o maior item faturado?
select * from faturamento order by vlr_t desc;

select * from faturamento order by nf, vlr_t desc;

select * from faturamento order by 2;


-- qual o total de faturamento por nf?
select nf, sum(vlr_t) as "Valor T"
from faturamento 
group by nf
order by 2 desc 

select sum(vlr_t) from faturamento 

-- exemplo com datas
-- uso de filtro e between
-- considerando que exista os atributo dt_faturamento
select sum(vlr_t) 
from faturamento 
where dt_faturamento between '2021-10-01' and '2021-10-31' -- faturamento mes anterior

select sum(vlr_t) 
from faturamento 
where dt_faturamento between '2021-10-01' and current_date -- faturamento mes anterior até a data atual

select sum(vlr_t) 
from faturamento 
where dt_faturamento between '2021-10-01' and current_date -1 -- faturamento mes anterior até ontem


-- qual o faturamento total da produto 1?
select sum(vlr_t)
from faturamento 
where id_produto = 1

select id_produto, sum(vlr_t)
from faturamento 
where id_produto in (1,2,3)
group by id_produto
order by id_produto 

select id_produto, count(*)
from faturamento 
where id_produto in (1,2,3)
group by id_produto
order by id_produto 

select count(*) from faturamento 




