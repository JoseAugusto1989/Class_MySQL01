-- parte 02
-- ex01 

select max(idade) as maiorIdade from pessoa
where sexo = 'M';

select nome from pessoa where sexo = 'M' and idade = 33;

-- comando aninhado

select nome from pessoa where sexo = 'M' and idade = 
(
	select max(idade) as maiorIdade from pessoa where sexo = 'M'
);

-- ex02 

select max(idade), cidade as maiorIdade from pessoa group by cidade;
	select nome from pessoa where idade = 45;

select cidade from pessoa;

select max(idade), cidade from pessoa group by cidade;

-- comando aninhado 

select nome, idade, cidade from pessoa where idade in 
(
	select max(idade) from pessoa group by cidade
)
	group by cidade;

-- ex03

select min(idade) as H from pessoa
where sexo = 'M';

select min(idade) as M from pessoa
where sexo = 'F';

-- comando aninhado 

select min(idade) as H from pessoa
where sexo = 'M'
(
	select min(idade) as M from pessoa
where sexo = 'F'
);



