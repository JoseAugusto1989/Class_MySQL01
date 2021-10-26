-- criando duas tabelas na Database empresa

create table if not exists departamento(
	cod integer not null auto_increment comment 'Código do Departamento',
	nome varchar(100) not null default 'NÃO INFORMADO' comment 'Nome do Departamento',
	primary key (cod)
);

create table if not exists empregado(
	cod integer not null default 0 comment 'Código do Empregado',
	cod_departamento integer not null default 0 comment 'Código do Departamento',
	titulo varchar(100) not null default 'NÃO INFORMADO' comment 'Título do Empregado',
	data_lotacao datetime not null default '1899-12-31' comment 'Data de Lotação'
);

-- comando para deletar uma tabela
-- drop table departamento;

-- como inserir um atributo em uma tabela
alter table empregado add column email varchar(100) not null default 'NÃO INFORMADO'
comment 'E-mail do Empregado';

-- como apagar um complemento de um atributo de uma tabela de modo simplificado
alter table empregado alter column email drop default;

-- como modificar um atributo de modo simplificado
alter table empregado rename column titulo to nome;
alter table empregado alter column email set default 'NÃO INFORMADO';

-- como apagar um atributo de uma tabela
alter table empregado drop column data_lotacao;

-- criando chave primaria
alter table departamento add constraint primary key (cod);

-- atribuindo auto incremento
-- elemento complementar que permite o preenchimento automático de um determinado atributo
-- ele pode ser associado as PKs(Primary Key) 'auto_increment'

-- criando chave estrangeira FK(Foreign Key) chave estrangeira
-- origem = departamento (cod)
-- destino = empregado (cod_departamento)

alter table empregado 
	add constraint fk_departamento
	foreign key (cod_departamento)
	references departamento (cod)
	on delete set default 
	on update cascade
	





