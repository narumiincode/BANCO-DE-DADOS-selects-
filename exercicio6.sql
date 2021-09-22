create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria
(
id bigint auto_increment,
phyton varchar(255) not null,
c varchar(255) not null,
java varchar(255) not null,
primary key(id)
);


insert into tb_categoria (phyton, c, java) 
values ("sim","não","não");
insert into tb_categoria (phyton, c, java) 
values ("não","sim","não");
insert into tb_categoria (phyton, c, java) 
values ("não","não","sim");

select * from tb_categoria;

create table tb_curso
(
id bigint auto_increment,
nome varchar(255) not null,
turma varchar(255) not null,
turno varchar(255) not null,
valor decimal(6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso(nome, turma, turno, valor,categoria_id) values 
("josé", "3", "manhã", 434.98, 1);
insert into tb_curso(nome, turma, turno, valor,categoria_id) values 
("ana", "7", "tarde", 543.99, 3);
insert into tb_curso(nome, turma, turno, valor, categoria_id) values 
("maria", "3", "manhã", 432.5, 1);
insert into tb_curso(nome, turma, turno, valor, categoria_id) values 
("tião", "43", "noite", 23.99, 2);
insert into tb_curso(nome,turma, turno, valor, categoria_id) values 
("mario", "1", "integral", 987.09, 3);

select * from tb_curso;

select * from tb_curso where valor>=50;

select * from tb_curso where valor between 3 and 60;

select * from tb_curso where nome like "%j%";

select * from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.id=3;