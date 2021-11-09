create database empresa_2;

create table if not exists emp_func(
	cod_func integer not null default 0 comment 'Código do Empregado',
	nome_func varchar(50) not null default 'NÃO INFORMADO' comment 'Nome do Funcionario',
	cpf_func integer not null default 0 comment 'CPF do Funcionario',
	ide_func integer not null default 0 comment 'Identidade do funcionario',
	dep_func integer not null default 0 comment 'Departamento do Funcionario',
	primary key (cod_func)
);



create table if not exists emp_depa(
	cod_depa integer not null default 0 comment 'Codigo do departamento',
	nome_depa varchar(40) not null default 'NÃO INFORMADO' comment 'Nome do departamento',
	primary key (cod_depa)
);


alter table emp_func add constraint fk_departamento
	foreign key (dep_func)
	references emp_depa (cod_depa)

	
-- DML
-- INSERT
	
insert into emp_depa(cod_depa, nome_depa) values(1, 'Administrativo');
insert into emp_depa(cod_depa, nome_depa) values(2, 'Financeiro');
insert into emp_depa(cod_depa, nome_depa) values(3, 'Vendas');


-- SELECT
select * from  emp_depa;

select cod_depa from emp_depa;

select cod_depa as 'Código do departament',
	nome_depa as 'Nome do Departamento'
	from emp_depa
where cod_depa = 1;


-- DELETE
delete from emp_depa;
-- deleta toda a tabela 

delete from emp_depa  where cod_depa = 1;


-- UPDATE 
update emp_depa  set nome_depa = 'Faturamento' where cod_depa  = 2;




