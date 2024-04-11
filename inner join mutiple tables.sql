use cadastro;
select * from cursos;
select * from gafanhotos;

create table gafanhoto_assiste_curso(
	id int null auto_increment,
    data date,
    id_gafanhoto int,
    id_cursos int,
    primary key(id),
    foreign key (id_gafanhoto) references gafanhotos(id),
    foreign key (id_cursos) references cursos(idcurso)
)default charset = utf8mb4;

insert into gafanhoto_assiste_curso value 
(default, '2014-01-05', '1', '4');

select * from gafanhoto_assiste_curso;

select g.nome, c.nome, a.data from gafanhotos g 
join gafanhoto_assiste_curso a 
on g.id = a.id_gafanhoto
join cursos c
on a.id_cursos = c.idcurso
order by g.nome;







