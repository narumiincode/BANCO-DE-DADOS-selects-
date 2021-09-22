create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria
(
id bigint auto_increment,
laboratorio varchar(255) not null,
setor varchar(255) not null,
controlado varchar(255) not null,
promocao varchar(255) not null,
primary key(id)
);


insert into tb_categoria (laboratorio, setor, controlado, promocao) 
values ("lucrando loucamente", "hipertensão","sim","sim");
insert into tb_categoria (laboratorio, setor, controlado, promocao) 
values ("lucrando loucamente", "diabetes","não","não");
insert into tb_categoria (laboratorio, setor, controlado, promocao) 
values ("rindo","dematológicos","não","sim");
insert into tb_categoria (laboratorio, setor, controlado, promocao) 
values ("pode ser que funcione", "dermocomésticos","não","não");

select * from tb_categoria;

create table tb_produto
(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal(4,2) not null,
principio_ativo varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome, valor, principio_ativo, categoria_id) values
("sem pressão bebe", 8.94, "sem sódio",1);
insert into tb_produto(nome, valor, principio_ativo, categoria_id) values
("todo dia", 23.65, "óleo de jatobá",4);
insert into tb_produto(nome, valor, principio_ativo, categoria_id) values
("sem açucar", 6.92, "sem açucar",2);
insert into tb_produto(nome, valor, principio_ativo, categoria_id) values
("para pele", 56.90, "talco",3);

select * from tb_produto;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where valor>=50;

select * from tb_produto where nome like "%b%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id=4;