/* Quando for adicionado os dados fora de ordem */
insert into pessoas
	(id, sexo, nome, idade, nacionalidade, peso, altura)
values
	(default, 'Feminino', 'Maria', '1998-05-05', 'Lodom', '95.5', '1.89');

/*Forma resumida com dados em ordem*/
insert into pessoas values
	(default, 'Carla', '2000-05-05', 'Feminino', '95.5', '1.89', default),
    (default, 'Fabio', '1998-05-05', 'Masculino', '95.5', '1.89', 'Portugal'),
    (default, 'Miranda', '1544-05-05', 'Feminino', '95.5', '1.89', 'Japao');

select * from pessoas;

/*DML Data Manipulation Language*/