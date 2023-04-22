create database loja_de_calçados;


use loja_de_calçados;





create table funcionarios
(
	id int unsigned not null auto_increment,
    funcionarios varchar(50) not null,
    cpf varchar(14) not null,
    primary key(id)
);
select * from funcionarios;

insert into funcionarios(id, funcionarios, cpf) values (1, 'Allan', '111.111.111-11');
insert into funcionarios(id, funcionarios, cpf) values (2, 'Júlia', '222.222.222-22');
insert into funcionarios(id, funcionarios, cpf) values (3, 'Larissa', '333.333.333-33');
insert into funcionarios(id, funcionarios, cpf) values (4, 'Adam', '444.444.444-44');
insert into funcionarios(id, funcionarios, cpf) values (5, 'Julios', '555.555.555-55');


create table cargos
(
	id int unsigned not null auto_increment,
    cargo varchar(45) not null default '',
    primary key(id)
);

select * from cargos;

insert into cargos(id, cargo) values (1, 'Gerente');
insert into cargos(id, cargo) values (2, 'Caixa');
insert into cargos(id, cargo) values (3, 'Atendente');
insert into cargos(id, cargo) values (4, 'Atendente');
insert into cargos(id, cargo) values (5, 'Atendente');


select * from funcionarios join cargos on funcionarios.id = cargos.id;


create table salarios 
(
	id int unsigned not null auto_increment,
    salario double not null default'0',
    primary key(id)
);
select * from salarios;

insert into salarios(id, salario) values (1, 5000);
insert into salarios(id, salario) values (2, 1500);
insert into salarios(id, salario) values (3, 1100);
insert into salarios(id, salario) values (4, 1100);
insert into salarios(id, salario) values (5, 1100);

select * from funcionarios join salarios on funcionarios.id = salarios.id;

