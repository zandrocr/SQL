/* novo banco cadastro*/
use cadastro;
show tables;
desc gafanhotos;
select * from pessoas;
select * from cursos;
select * from gafanhotos;

/* ordenar pela coluna */
select * from cursos
order by nome desc; /* desc mostra de forma decrescente / asc mostra de forma padrão */

/* exibe colunas especificas */
select nome, carga, ano from cursos
order by nome; 
/* exibe colunas especificas em ordem diversas*/
select ano, nome, carga  from cursos
order by ano; 
/* exibe colunas especificas em ordem diversas em ordem desejada*/
select ano, nome, carga  from cursos
order by ano, nome; 

/* exibir linhas */
select nome, carga  from cursos
where ano = 2016
order by ano, nome; 
/* exibe linhas com tipos de operadores relacionais */
select nome, descricao, ano from cursos
where ano <= 2016
order by nome; 
/* exibe linhas */
select nome, descricao, ano from cursos
where ano >= 2016
order by nome; 
/* exibe linhas */
select nome, descricao, ano from cursos
where ano > 2016
order by nome; 
/* exibe linhas */
select nome, descricao, ano from cursos
where ano < 2016
order by nome; 
/* exibe linhas */
select nome, descricao, ano from cursos
where ano != 2016 /* != ou <> */
order by nome; 

/* mostra os resultados ente uma chamada */
select nome, descricao, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc; 

/* mostra resultados especificos */
select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano desc, nome asc; 

/* operações logicas */
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30
order by ano desc, nome asc; 
/* operações logicas */
select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30
order by ano desc, nome asc; 

/* select, DQL Data Query Language*/
