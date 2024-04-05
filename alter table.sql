use cadastro;
describe pessoas;

/* Adicionar coluna a tabela */
alter table cursos add column ano year;

/* Excliur coluna da tabela */
alter table pessoas drop column profissao;

/* Adicionar em apos uma coluna */
alter table pessoas add column profissao varchar(30) after nome;

/* Adicionar em primeiro */
alter table pessoas add column cod varchar(30) first;

/* Modificar regras da coluna */
alter table cursos modify column nome varchar(30);

/* Modificar nome, constrants, tipo primitivo da coluna */
alter table pessoas change column prof profissao varchar(20) not null default '';

/* Modificar nome da tabela */
alter table people rename to pessoas;

select * from pessoas;

/* Nova tabela */
create table if not exists cursos(
	nome varchar(30) not null unique,
	descricao text,
	carga int unsigned,
	totaulas int default '2024',
    ano year
)default charset = utf8mb4;

/* aterar coluna */
alter table cursos add column idcurso int first;

/* adicionar a chave primaria a coluna */
alter table cursos add primary key (idcurso);

alter table cursos modify column idcurso int not null auto_increment;

/* excluir tabela */
drop table if exists alunos;

desc pessoas;

/*Alter table and drop table, DDL Data Definition Language*/