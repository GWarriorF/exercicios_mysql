create database colaboradores_RH;

use colaboradores_RH;
create table tabela_colaboradores(
	id bigint auto_increment,
    nome_colaborador varchar(255) not null, 
    cargo varchar(50) not null,
    salario decimal(8,2) not null, 
    carga_horaria_semana int,
    primary key (id)
);

select * from tabela_colaboradores;

insert into tabela_colaboradores(nome_colaborador, cargo, salario, carga_horaria_semana)
values ("Igor Augusto", "Desenvolvedor Java Senior", 60000.00, 30);

insert into tabela_colaboradores(nome_colaborador, cargo, salario, carga_horaria_semana)
values ("Gabriela Guerra", "Tech Leader", 100000.00, 30);

insert into tabela_colaboradores(nome_colaborador, cargo, salario, carga_horaria_semana)
values ("Sylvester Stallone", "Segurança", 10000.00, 40);

insert into tabela_colaboradores(nome_colaborador, cargo, salario, carga_horaria_semana)
values ("Vin Diesel", "Motorista", 8000.00, 40);

insert into tabela_colaboradores(nome_colaborador, cargo, salario, carga_horaria_semana)
values ("Yuri Oliveira", "Estagiário front-end", 3000.00, 30);

insert into tabela_colaboradores(nome_colaborador, cargo, salario, carga_horaria_semana)
values ("Geandro", "Estagiário back-end", 3000.00, 30);

alter table tabela_colaboradores modify salario decimal(8,2);

update tabela_colaboradores set salario = 1500.00 where id = 6;

select * from tabela_colaboradores where salario < 2000.00;

select * from tabela_colaboradores where salario > 2000.00;
