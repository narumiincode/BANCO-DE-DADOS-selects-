create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria
(
id bigint auto_increment,
sabor varchar(255) not null,
pedacos int not null,
doce varchar(255) not null,
salgada varchar(255) not null,
promocao varchar(255) not null,
primary key(id)
);


insert into tb_categoria (sabor, pedacos, doce, salgada,
promocao) values ("salgado-promocional",12,"não","sim","sim");
insert into tb_categoria (sabor, pedacos, doce, salgada,
promocao) values ("doce", 8, "sim", "não", "não");
insert into tb_categoria (sabor, pedacos, doce, salgada,
promocao) values ("salgado-misto", 12,"não","sim","condições especiais");
insert into tb_categoria (sabor, pedacos, doce, salgada,
promocao) values ("salgado-especial", 8 ,"não","sim","não");

select * from tb_categoria;

create table tb_pizza
(
id bigint auto_increment,
ingrediente_principal varchar(255) not null,
azeitona varchar(255) not null,
molho varchar(255) not null,
borda_recheada varchar(255) not null,
valor decimal(4,2) not null,
leite_condensado varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza(ingrediente_principal, azeitona, molho,
borda_recheada, valor, leite_condensado,categoria_id) values
("mussarela", "sim", "sim", "opcional", 27.99, "não", 1);
insert into tb_pizza(ingrediente_principal, azeitona, molho,
borda_recheada, valor, leite_condensado,categoria_id) values
("doce de leite", "não", "não", "opcional", 33.54, "sim", 2);
insert into tb_pizza(ingrediente_principal, azeitona, molho,
borda_recheada, valor, leite_condensado,categoria_id) values
("peito de peru", "sim", "sim", "opcional", 39.99, "não", 4);
insert into tb_pizza(ingrediente_principal, azeitona, molho,
borda_recheada, valor, leite_condensado,categoria_id) values
("meia calabresa e meia frango", "sim", "sim", "opcional", 45.00, "não", 3);

select * from tb_pizza;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where ingrediente_principal like "%c%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.id=2;

