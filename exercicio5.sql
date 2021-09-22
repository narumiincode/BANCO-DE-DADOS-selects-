create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria
(
id bigint auto_increment,
hidraulico varchar(255) not null,
civil varchar(255) not null,
eletrico varchar(255) not null,
mecanico varchar(255) not null,
primary key(id)
);


insert into tb_categoria (hidraulico, civil, eletrico, mecanico)
values ("sim","não","não","não");
insert into tb_categoria (hidraulico, civil, eletrico, mecanico)
values ("não","sim","não","não");
insert into tb_categoria (hidraulico, civil, eletrico, mecanico)
values ("não","não","sim","não");
insert into tb_categoria (hidraulico, civil, eletrico, mecanico)
values ("não","não","não","sim");

select * from tb_categoria;

create table tb_produto
(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
quantidade varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome, preco, quantidade, categoria_id) 
values ("tijolo",1.99, "unidade",2);
insert into tb_produto(nome, preco, quantidade, categoria_id) 
values ("prego",0.99, "12 unidades",2);
insert into tb_produto(nome, preco, quantidade, categoria_id)
 values ("cano 3/8",6.99, "metro",1);
insert into tb_produto(nome, preco, quantidade, categoria_id)
 values ("fio 1/4", 54.99, "rolo 12 metros",3);
insert into tb_produto(nome, preco, quantidade, categoria_id)
 values ("motor de VW-santana 97-AP ", 999.99, "unidade",4);

select * from tb_produto;

select * from tb_produto where preco>=50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id=1;