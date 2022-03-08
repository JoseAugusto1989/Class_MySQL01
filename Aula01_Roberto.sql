create table Pessoa (
	cpf bigint not null,
	nome varchar(30) not null,
	idade integer not null,
	sexo varchar(1) not null,
	peso real not null,
	estado varchar(30) not null,
	cidade varchar(40) not null,
	ativo boolean not null
);

alter table Pessoa add constraint pessoa_pk primary key (cpf); 

--Script para ser usado nos exercícios de agrupamento
--Comandos de insert para fazer a validação das consultas:

insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (15, 'Jonas', 30,   50, 'M', 'RJ','Cabo Frio', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (3, 'José', 22,     55, 'M', 'MG','Cachoeira', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (8, 'Lorenzo', 17,  60, 'M', 'MG','Cachoeira', False);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (10, 'Ozama', 25,   65, 'M', 'MG','Cachoeira', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (14, 'Pedro', 20,   70, 'M', 'SP','Campinas', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (18, 'Júlia', 41,   75, 'F', 'SP','Campinas', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (16, 'Mateus', 40,  50, 'M', 'RJ','Niterói', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (17, 'Fernanda', 40,55, 'F', 'SP','Osasco', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (1, 'João', 20,     60, 'M', 'MG','Pouso Alegre', False);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (4, 'Joelma', 35,   65, 'F', 'MG','Pouso Alegre', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (7, 'Valentina', 26,70, 'F', 'MG','Pouso Alegre', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (11, 'Jane', 30,    75, 'F', 'MG','Pouso Alegre', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (2, 'Maria', 30,    50, 'F', 'MG','Santa Rita', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (6, 'Joaquim', 40,  55, 'M', 'MG','Santa Rita', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (12, 'Gustavo', 15, 60, 'M', 'MG','Santa Rita', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (5, 'Enzo', 13,     65, 'M', 'SP','São Paulo', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (9, 'Marta', 28,    70, 'F', 'SP','São Paulo', True);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (13, 'Jurema', 27,  75, 'F', 'SP','São Paulo', False);
insert into Pessoa (cpf, nome, idade, peso, sexo, estado, cidade, ativo) values (19, 'Márcia', 27,  50, 'F', 'RJ','Cabo Frio', False);


 -- select 
 -- from 
 -- where 
 -- group by 
 -- having 
 -- order by 

 -- exercicios

select * from Pessoa;

 -- 1 round(, 2) passa o numero de casas q vai imprimir 
select round(avg(idade), 2) as Media from Pessoa;

 -- 2
select round(avg(idade), 2) as media_idade_mulheres from Pessoa 
where sexo = 'F';

 -- 3
select min(idade) as menor, max(idade) as maior from Pessoa 
where sexo = "M";

 -- 4
select count(cpf) as numero, round(sum(idade),2) as soma_idade, max(idade) as maior_idade,
min(idade) as menor_idade, round(avg(idade), 2) as media
from Pessoa;

 -- 5
select round(avg(idade), 2) as mediaIdade, sexo from Pessoa 
group by sexo;

 -- 6
select round(avg(idade), 2) as mediaIdade, cidade from pessoa 
group by cidade;

 -- 7
select round(avg(idade),2) as media, sexo, cidade from pessoa 
group by sexo, cidade order by cidade;

 -- 8
select avg(idade) as media, cidade from pessoa
group by cidade having avg(idade) < 35 order by cidade;

 -- 9
select count(cpf) qtd, cidade from pessoa group by cidade;

select count(cpf) qtd, cidade from pessoa group by cidade 
having count(cpf) > 2 order by qtd;


