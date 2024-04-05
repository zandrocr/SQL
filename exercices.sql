use cadastro;
desc gafanhotos;
select * from gafanhotos order by nome;

/* 01 uma lista com o nome de todas as gafanhotas*/
select nome from gafanhotos 
where sexo = 'F' order by nome;

/* 02 uma lista com os dados de todos que nasceram entre 01/01/2000 e 31/12/2015 */
select * from gafanhotos 
where nascimento between '2000-01-01' and '2010-12-31' order by nascimento desc, nome;

/* 03 uma lista com todos os nome dos homens que trabalham como programador*/
select nome, profissao, sexo from gafanhotos 
where sexo = 'M' and profissao = 'programador' order by nome;

/* 04 uma lista com todos dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra J*/
select * from gafanhotos 
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/* 05 uma lista com o nome e nacionalidade de todos os homens que tem Silva no nome, não nasceram no Brasil e pesam menos de 100kg*/
select nome, nacionalidade, peso from gafanhotos 
where sexo = 'M' and nome like '%Silva%' 
and not nacionalidade = 'Brasil' and peso < 100;

/* 06 maior altuara entre homens que moram no brasil*/
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

/* 07 media de peso dos gafanhotos cadastrados*/
select avg(peso) from gafanhotos;

/* 08 qual é o menor peso entre a gafanhotos melheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000*/
select min(peso) from gafanhotos where sexo = 'f' and not nacionalidade = 'Brasil' and nascimento between '1990-01-01' and '2000-12-31' ;

/* 09 quantas gafanhotas tem mais de 1.90 de altura*/
select count(*) from gafanhotos where sexo = 'f' and altura > 1.90;






