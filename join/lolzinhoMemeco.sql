create database lolzinhoMemeco;

use lolzinhoMemeco;

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    vida_maxima bigint not null, 
    dano_por_ataque bigint	not null,
    atributos_mentais varchar(50) not null,
    habilidade varchar(100) not null,
    energia bigint not null,
    primary key(id)
);

create table tb_classes(
	id bigint auto_increment,
    categoria varchar(50) not null,
    nacionalidade varchar(50) not null,
    primary key(id)
);

insert into tb_classes(categoria, nacionalidade)
values ("Lutador", "Brasileiro");

insert into tb_classes(categoria, nacionalidade)
values ("Suporte", "Brasileiro");

insert into tb_classes(categoria, nacionalidade)
values ("Mago", "Brasileiro");

insert into tb_classes(categoria, nacionalidade)
values ("Assassino", "Brasileiro");

insert into tb_classes(categoria, nacionalidade)
values ("Tanque", "Brasileiro");

select * from tb_classes;

select * from tb_personagens;

-- Cria uma coluna na tabela personagens 
alter table tb_personagens add classes_id bigint;

alter table tb_personagens rename column atributos_mentais to atributo;

-- Altera a estrutura da coluna classes_id para um id estrangeiro
alter table tb_personagens add constraint fk_classes_personagens
foreign key(classes_id) references tb_classes(id);

insert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("Serjão Berranteiro", 1000, 20, "percepção", "Matador de onça", 500, 1);

insert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("James da salada de frutas", 500, 5, "Cura", "Equilibrio da salada de frutas", 700, 2);

insert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("Ronaldinho o bruxo", 400, 25, "Ilusão", "Ah, que? Quer namorar comigo", 1000, 3);

insert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("Patolino", 1200, 50, "Especialista em feitiço", "Mas o mago é implacável", 400, 3);

insert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("Eduardo Marinho", 1500, 2, "Consumidor de almas", "Tu vai me negar um prato de comida?", 600, 5);

tabela_colaboradoresinsert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("Naldo", 500, 5, "Rei da mentira", "Sou irmão do Chris Brown ", 200, 2);

insert into tb_personagens(nome, vida_maxima, dano_por_ataque, atributo, habilidade, energia, classes_id)
values("Mike Baguncinha", 1000, 40, "Mentiroso mirim", 'Com uma ak-45, pente alongado', 600, 4);
















 