create database gigamassas;
use gigamassas;

create table tb_pizzas (
id bigint auto_increment, 
sabor varchar(40) not null,
ingredientes varchar(100) not null,
valor decimal (5,2) not null,
borda_recheada boolean not null,
primary key (id)
);

create table tb_categorias(
id bigint auto_increment,
tipo_tamanho varchar(20) not null,
tipo_sabor varchar(20) not null,
primary key(id)
);

insert into tb_categorias (tipo_tamanho, tipo_sabor)
values ('broto','salgado');

insert into tb_categorias (tipo_tamanho, tipo_sabor)
values ('broto','doce');

insert into tb_categorias (tipo_tamanho, tipo_sabor)
values ('normal','salgado');

insert into tb_categorias (tipo_tamanho, tipo_sabor)
values ('normal','doce');

select * from tb_categorias;
select * from tb_pizzas;

alter table tb_pizzas add categoria_id bigint;

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Frango com catupiry','molho de tomate, queijo, frango, catupiry', 30.00, true,  1);

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Frango com catupiry','molho de tomate, queijo, frango, catupiry', 50.00, true,  3);

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Dois queijos','molho de tomate, queijo prato, mussarela', 30.00, false,  3);

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Banana com nutella','banana, nutella', 50.00, true,  2);

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Pizza de Churros','Doce de leite, canela com açucar', 40.00, true,  2);

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Pizza de Camarão com Brocólis','mussarela, Camarão, brocólis, oregáno', 70.00, false, 3);

insert into tb_pizzas (sabor, ingredientes, valor, borda_recheada, categoria_id) 
values ('Pizza de kiwi com açai','kiwi, açai, leite condesado', 30.00, false, 2);

update tb_pizzas set sabor = "Portuguesa" where id = 3;

alter table tb_pizzas add constraint fk_pizza_categorias
foreign key (categoria_id) references tb_categorias (id);

select * from tb_pizzas  
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;

select * from tb_pizzas where valor >= 45.00;

select * from tb_pizzas where valor between 50.00 and 100.00;

select * from tb_pizzas where sabor like ("%m%");

select tb_pizzas.sabor, tb_categorias.tipo_sabor from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id where tb_categorias.tipo_sabor = "doce";