create table if not exists users(
	id int not null auto_increment primary key,
	username varchar(254) not null unique,
	password varchar(100) not null,
    data_criacao timestamp not null default current_timestamp 
)default charset = utf8mb4;
desc users;

alter table users 
change column data_criacao data_criacao timestamp not null default current_timestamp;

insert into users (username, password) values('mu55ch@live.com', '1234567');
select * from users;

create table if not exists  leads(
	id int not null auto_increment primary key,
	key_ref int not null,
    nome varchar(30) not null,
	email varchar(254) not null,
    telefone varchar(30) not null,
    origem_id int default 0,
    indicador varchar(30),
    status_atendimento int default 0,
    produto_id int default 0,
    finalidade varchar(30),
    marca varchar(30),
    credito_em_negociacao int default 0,
    profissao varchar(30),
    parcela_ideal int default 0,
    renda int default 0,
    entrada int default 0,
    fgts int default 0,
    paga_aluguel boolean not null default false,
    valor_aluguel int default 0,
    decide_sozinho boolean not null default false,
    conhece_consorcio boolean not null default false,
    tem_imovel boolean not null default false,
    tem_automovel boolean not null default false,
    percepcao_vendedor varchar(30),
    landing_page boolean not null default false,
    usuario_id int default 0,
    cpf_cnpj varchar(30),
    genero int default 0,
    estado_civil int default 0,
    data_nascimento date,
    cep varchar(30),
    logradouro varchar(30),
    numero_logradouro varchar(30),
    bairro varchar(30),
    cidade varchar(30),
    uf varchar(30),
    codigo_ibge_cidade varchar(30),
    complemento varchar(30),
    visitou_loja_em timestamp default current_timestamp,
    foreign key (key_ref) references users(id)
)default charset = utf8mb4;
desc leads;

insert into leads (key_ref, nome, email, telefone) values
(1, 'Maria', 'maria@live.com', '11-12222-5555');
select * from leads;


