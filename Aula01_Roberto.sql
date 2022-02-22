create table Pessoa(
	cpf bigint not null,
	nome varchar(30) not null,
	idade integer not null,
	sexo varchar(1) not null,
	peso real not null,
	estado varchar(30) not null,
	cidade varchar(40) not null,
	ativo boolean not null
); 

	-- insere dados na tabela 
	-- depois da tabela preenchida, comandos para para mostrar a table 
	-- SUM "soma", AVG "média dos valores", COUNT "contagem de linhas", MIN "menor valor", MAX "maior valor"
	-- WHERE "filtro"

insert into Pessoa values(108345, 'Jose', 32, 'M', 85, 'MG', 'Pouso Alegre', true);
insert into Pessoa values(234543, 'Mauro', 23, 'M', 90, 'SP', 'São Paulo', true);
insert into Pessoa values(234231, 'Pedro', 22, 'M', 76, 'RS', 'Porto Alegre', true);
insert into Pessoa values(897098, 'Fernanda', 23, 'F', 65, 'SP', 'Araraquara', false);
insert into Pessoa values(098897, 'Marcia', 28, 'F', 58, 'MG', 'Poços de Caldas', true);
insert into Pessoa values(901231, 'Enzo', 18, 'M', 72, 'MG', 'Santa Rita', true);
insert into Pessoa values(232234, 'José', 33, 'M', 81, 'RJ', 'Cabo Frio', true);
insert into Pessoa values(908554, 'Joana', 45, 'F', 61, 'RJ', 'Rio de Janeiro', false);
insert into Pessoa values(998732, 'Sandra', 34, 'F', 55, 'MG', 'Congonhal', true);
insert into Pessoa values(872343, 'Mateus', 21, 'M', 88, 'BA', 'Salvador', false);
insert into Pessoa values(656538, 'Samara', 28, 'F', 61, 'MG', 'Pouso Alegre', true);
insert into Pessoa values(324123, 'Fran', 19, 'F', 68, 'SP', 'Campinas', true);
insert into Pessoa values(212276, 'Roberta', 25, 'F', 65, 'RJ','Niterói', false);

select * from Pessoa;

select sum(peso) from Pessoa;

select avg(peso) as mediaPeso, sum(peso) as pesoTotal, avg(idade) as mediaIdade, sum(idade) as idadeTotal from Pessoa; 

select count(cpf) from Pessoa
where sexo = 'F';

select sum(peso) from Pessoa 
where estado = 'MG';

	-- soma dos pesos para cada estado (Agrupamento 'GROUP BY')

select sum(peso) as soma, estado from Pessoa
group by estado;

	-- soma dos pesos de cada sexo em cada estado
	 
select sum(peso) as soma, estado, sexo from Pessoa
group by estado, sexo;


	-- soma das cidades por cada estado

select count(cidade) as cidade_Soma, estado from Pessoa
group by estado;

