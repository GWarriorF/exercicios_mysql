create database generation_high_school;

use generation_high_school;

create table tb_alunes(
	id bigint auto_increment,
    nome_alune varchar(50) not null,
    nota_bimestre_1 decimal(3,2) not null,
    nota_bimestre_2 decimal(3,2) not null,
    nota_bimestre_3 decimal(3,2) not null,
    nota_bimestre_4 decimal(3,2) not null,
    primary key(id)
);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Gabriela Guerra", 10.0, 10.0, 9.5, 8.7, 9.55);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Igor Augusto", 9.7, 9.8, 9.5, 9.6, 9.65);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Marielson", 6.7, 5.8, 7.5, 6.6, 6.55);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Maria de Fatima", 7.0, 7.0, 7.0, 6.5, 6.86);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Thayron", 8.0, 8.0, 8.7, 9.5, 8.55 );

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Pedro Henrique", 6.9, 7.0, 5.0, 7.0, 6.4);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Felipe", 5.9, 6.0, 6.8, 6.5, 6.3);

insert into tb_alunes(nome_alune, nota_bimestre_1, nota_bimestre_2, nota_bimestre_3, nota_bimestre_4, media_final)
values("Micael", 8.9, 9.0, 10, 9.8, 9.42);

alter table tb_alunes add media_final decimal(3,2) not null;
alter table tb_alunes modify media_final decimal(4,2);
alter table tb_alunes modify nota_bimestre_1 decimal(4,2);
alter table tb_alunes modify nota_bimestre_2 decimal(4,2);
alter table tb_alunes modify nota_bimestre_3 decimal(4,2);
alter table tb_alunes modify nota_bimestre_4 decimal(4,2);

select * from tb_alunes;

select nome_alune as alune
	   , nota_bimestre_1 as "bimestre 1"
	   , nota_bimestre_2 as "bimestre 2"
       , nota_bimestre_3 as "bimestre 3"
       , nota_bimestre_3 as "bimestre 4"
	   , media_final as media
       from tb_alunes;
       
select nome_alune as "Alune", media_final as "Media" from tb_alunes where media_final >= 7.0;
select nome_alune as "Alune", media_final as "Media" from tb_alunes where media_final < 7.0;

update tb_alunes set nota_bimestre_4 = 7.0 where id = 4;
update tb_alunes set media_final = 7.0 where id = 4;