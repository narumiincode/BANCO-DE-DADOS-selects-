create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria
(
id bigint auto_increment,
frutas varchar(255) not null,
legumes varchar(255) not null,
hortalicas varchar(255) not null,
primary key(id)
);


insert into tb_categoria (frutas, legumes, hortalicas)	
values ("não", "não", "sim");
insert into tb_categoria (frutas, legumes, hortalicas)	
values ("não","sim", "não");
insert into tb_categoria (frutas, legumes, hortalicas)	
values ("sim","não", "não");

select * from tb_categoria;

create table tb_produto
(
id bigint auto_increment,
nome varchar(255) not null,
quantidade varchar(255) not null,
valor decimal(4,2) not null,
promoção varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome, quantidade, valor, promoção,categoria_id) values
("laranja", "duzia", 7.99, "não", 3);
insert into tb_produto(nome, quantidade, valor, promoção,categoria_id) values
("alface", "unidade", 1.99, "não", 1);
insert into tb_produto(nome, quantidade, valor, promoção,categoria_id) values
("abóbora", "kilo (kG)", 4.99, "sim", 2);
insert into tb_produto(nome, quantidade, valor, promoção,categoria_id) values
("quiabo", "kilo (KG)", 2.99, "não", 2);

select * from tb_produto;

select * from tb_produto where valor>=50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id=2;