create table if not exists produto(
	cod integer,
	nome varchar(50)
);

create table if not exists distribuicao(
	cod_cidade integer,
	cod_produto integer,
	cod_distribuidor integer,
	dta_inicio datetime
);

create table if not exists distribuidor(
	cod integer,
	nome varchar(50)
);

create table if not exists cidade(
	cod integer,
	nome varchar(50)
);

-- inserir 

alter table cidade modify cod integer not null default 0 comment 'Código da Cidade';

alter table distribuidor modify cod integer not null default 0 comment 'Código do Distribuidor';

alter table produto modify cod integer not null default 0 comment 'Código do Produto';

alter table distribuicao modify cod_cidade integer not null default 0 comment 'Código da Cidade';

alter table distribuicao modify cod_produto integer not null default 0 comment 'Código do Produto';

alter table distribuicao modify cod_distribuidor integer not null default 0 comment 'Código do Distribuidor';

alter table cidade comment 'Cadastro de Cidade';

-- renomear cod para codigo

alter table cidade rename column cod to codigo;

alter table produto rename column cod to codigo;

alter table distribuidor rename column cod to codigo;

-- alterar tipo de dado do cod integer para numeric

alter table cidade modify codigo numeric not null default 0 comment 'Código da Cidade';

alter table cidade modify codigo integer not null default 0 comment 'Código da Cidade';

-- drop apagar arquivos

drop table if exists cidade;

-- para criar usuario create user 'joseAugusto' identified by '12345678';
-- drop user 'joseAugusto';



