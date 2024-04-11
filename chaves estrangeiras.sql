use cadastro;
desc gafanhotos;
select * from gafanhotos;

/* 
	Egine de criação de bancos
	MyISAM, InnoDB, XtraDB*/
    
/*
	ACID = Atomicidade, Consitência, Isolamento, Durabilidade
	Atomicidade: Garante que todas as tarefas da transação sejam cumpridas, ou a mesma seja cancelada como um todo.
    Consistência: Garante que o banco de dados esteja em um estado íntegro depois de a transação ser realizada.
	Isolamento: Garante que o resultado de uma transação só seja visível para outras transações no momento em que ela é finalizada com sucesso.
	Durabilidade: Garante que a transação seja persistida assim que finalizada, ou seja, não será desfeita ou perdida mesmo na ocorrência de falhas do sistema.
    
*/

alter table gafanhotos
add column cursopreferido int;

/*O foreign key tranforma a coluna em uma chave multipla*/
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

/*Aqui adiciona o id do curso da tabela cursos ao usuario no campo cursospreferido*/
update gafanhotos set cursopreferido = '6' where id = '1';

/* integridade referencioal */
delete from cursos 
where id = '6';

/*inner join Junta e exibe as tabelas pela relação entre elas*/
select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos inner join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

/*Com apelidos para as colunas*/
select G.nome, C.nome, C.ano from gafanhotos as G join cursos as C
on C.idcurso = G.cursopreferido
order by G.nome;

/*Exibi o resultado dando peferencia a tabela ao lado esquerdo*/
select g.nome, c.nome, c.ano from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

/*Exibi o resultado dando peferencia a tabela ao lado direito*/
select g.nome, c.nome, c.ano from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido
order by c.nome;


select * from gafanhotos;

