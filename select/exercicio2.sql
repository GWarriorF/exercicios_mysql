create database casa_das_hqs;
use casa_das_hqs;
create table tabela_hqs(
	id bigint auto_increment,
    nome_hq varchar(255) not null, 
    edicao bigint not null,
    valor decimal(8,2) not null, 
    escritor varChar(50) not null,
    artista varChar(50) not null,
    primary key (id)
);

select * from tabela_hqs;

insert into tabela_hqs(nome_hq, edicao, valor, escritor, artista)
values ("Venom", 8, 16.50, "Donny Cates", "Joshua Cassara & Ryan Stegman");

insert into tabela_hqs(nome_hq, edicao, valor, escritor, artista)
values("Gwen-Aranha: Aranha Fantasma", 0, 30.99, "Seanan McGuire", "Rosi Kampe com Takeshi Miyazawa");

insert into tabela_hqs(nome_hq, edicao, valor, escritor, artista)
values("Guardiões da Galaxia", 1, 500, "Tim Valentino", "Steve Montano");

insert into tabela_hqs(nome_hq, edicao, valor, escritor, artista)
values("Nick Fury - Agente da S.H.I.E.L.D", 1, 900, "Jim Steranko", "Jim Steranko");

insert into tabela_hqs(nome_hq, edicao, valor, escritor, artista)
values("Black Widow", 1, 900, "Richard K. Morgam", "Bill Sienkiewicz");

delete from tabela_hqs where id = 3;

update tabela_hqs set valor = 699.99 where id = 6;

select * from tabela_hqs where valor > 100;
select * from tabela_hqs where valor < 100;