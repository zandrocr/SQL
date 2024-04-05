use cadastro;

/* procura por um semelhante */
select * from cursos where nome like 'p%'; /* % quando termina nenhum ou qualquel coisa */
select * from cursos where nome like '%a'; /* % quando começa nenhum ou qualquel coisa */
select * from cursos where nome like '%a%'; /* % quando tem nenhum ou qualquel coisa antes ou depois */
select * from cursos where nome not like '%a'; /* quando não quer que mostre x na pesquisa */

update cursos set nome = 'PáOO' where idcurso = '9';
select * from cursos where nome like '%a%';

select * from cursos
where nome like 'ph%p%';

select * from cursos
where nome like 'ph%p_'; /* _ exige um caractere depois */
select * from cursos
where nome like 'p_p%';
select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%Silva%'; /* que tem */
select * from gafanhotos
where nome like '%Silva'; /* que termina */
select * from gafanhotos
where nome like 'Silva%'; /* que começa */

/* mostra todos distintas*/
select distinct carga from cursos
order by carga desc;

/* conta quantos tem */
select count(*) from cursos where carga > 40;
select count(nome) from cursos;

/* maior dentro de um campo */
select max(totaulas) from cursos where ano = '2016';

/* menor dentro de um campo */
select min(totaulas) from cursos where ano = '2016';

/* soma dentro de um campo */
select sum(totaulas) from cursos where ano = '2016';

/* media de toatal dentro de um campo */
select avg(totaulas) from cursos where ano = '2016';

/*  */












