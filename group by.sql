use cadastro;

/* agrupa o resultado */
select carga from cursos group by carga order by carga desc; 
select count(*), totaulas from cursos group by totaulas order by totaulas; 

/* somente quem tem*/
select carga, count(*) from cursos group by carga having count(nome) > 3;
select ano, count(*) from cursos group by ano having count(nome) > 3 order by ano desc;
select ano, count(*) from cursos group by ano having ano > 2010 order by ano desc;
select ano, count(*) from cursos where totaulas > 30 group by ano having ano > 2010 order by ano desc;

/* juntar select*/
select carga, count(*) from cursos group by carga having carga > (select avg(carga) from cursos);
