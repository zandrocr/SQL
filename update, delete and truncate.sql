use cadastro; 
describe cursos; 
select * from cursos;

insert into cursos values
(default ,'HTML6','Curso de HTML5','40','37','2014'),
(default,'Hfss','Curso de HTML5','20','5','2012'),
(default,'3fds','Curso de HTML5','10','35','2017'),
(default,'Hwfw4','Curso de HTML5','20','12','2015'),
(default,'353','Curso de HTML5','30','44','2019'),
(default,'HTfsdf4','Curso de HTML5','10','4','2020'),
(default,'wrL4','Curso de HTML5','40','22','2055'),
(default,'Hwerwe','Curso de HTML5','10','4','2036');

/* modifica a linha pelo id */
update cursos set nome = 'HTML5' where idcurso = '3';

/* multiplas modificações na linha pelo id */
update cursos set nome = 'PHP', ano = '2023' where idcurso = '5';
update cursos set nome = 'Java',carga = '40', ano = '2020' where idcurso = '7' limit 1;
/* comando sem entrar na tabela */
update cadastro . cursos set nome = 'SQL', descricao = 'Curso SQL' where cursos . idcurso = 6;

use cadastro;
select * from cursos;

/* deleta a linha pelo id */
delete from cursos where idcurso = '1';

/* deleta todas as linhas com a coluna ano 2020 */
delete from cursos where ano = '2020';

/* deleta todas as linhas da tabela */
truncate table cursos;

/*update, delete and truncate, DDL Data Definition Language*/