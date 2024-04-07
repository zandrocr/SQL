use cadastro;
select * from gafanhotos;

/*I - Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos */
select profissao, count(profissao) from gafanhotos group by profissao;

/*II - Quantos gafanhotos homens e quantas mulhers nasceram após 01-01-2005 */
select count(*), sexo from gafanhotos where nascimento > '2005-01-01' group by sexo;

/*III - Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nacidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade */
select nacionalidade, count(*) from gafanhotos 
where not nacionalidade = 'Brasil' 
group by nacionalidade having count(nacionalidade) > 3
order by nacionalidade;

/*IV - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados */
select altura, peso, count(*) as 'Quantidade de Pessoas' from gafanhotos 
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);
 
/*1 - Agrupe a nacionalidade de todos os gafanhotos homens nascidos entre 01-01-1990 à 31-12-2020. O resultado tem ser visto da nacionalidade com menor número de  gafanhotos ao maior. */
select nome, nascimento from gafanhotos 
where sexo= 'm'
group by nascimento having nascimento >= '1990-01-01' and nascimento <= '2020-12-31';

/*2 -  Agrupe o peso de todos os gafanhotos sendo que só devem aparecer o peso que contem dois mais gafanhotos */
select peso, count(peso) from gafanhotos 
group by peso having count(peso) >= 2;

/*3 - Agrupe a altura de todos os gafanhotos sendo que só devem ser mostrados aquelas que contem 4 à 6 gafanhotos. À altura e o número de gafanhotos deve ser mostrado de forma descendente. */
select altura, count(altura) from gafanhotos
group by altura having count(altura) >= 4 and count(altura) <= 6 
order by count(altura) desc, altura desc;

/*4 - Agrupe o total de aulas existentes nos cursos feitos no ano de 2016, 2018 e 2019. Só devem ser mostrados o total de aulas iguais ou cima da méida de aulas, ordenados pela quantidade existente nelas. */
select totaulas, count(totaulas), ano from cursos
where ano in ('2016','2018','2019')
group by totaulas having totaulas >= (select avg(totaulas) from cursos)
order by ano desc;