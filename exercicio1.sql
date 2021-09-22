create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe
(
id bigint auto_increment,
habilidade varchar(255) not null,
grupo varchar(255) not null,
voa varchar(3) not null,
acidentes int not null,
inteligente varchar(3) not null,
primary key(id)
);

insert into tb_classe (habilidade, grupo, voa,acidentes,inteligente) values ("arqueiro", "liga da justiça", "não",56,"sim");
insert into tb_classe (habilidade, grupo, voa,acidentes,inteligente) values ("boxeador", "liga do wilson", "sim",987,"sim");
insert into tb_classe (habilidade, grupo, voa,acidentes,inteligente) values ("telepatia", "casa de aposta do pinguim", "não",21,"sim");
insert into tb_classe (habilidade, grupo, voa,acidentes,inteligente) values ("teletranporte", "Banda vingadores", "não",8765,"sim");
insert into tb_classe (habilidade, grupo, voa,acidentes,inteligente) values ("invisibilidade", "liga do invisivel", "não",0,"sim");

select * from tb_classe;

Create table tb_personagem
(
id bigint auto_increment,
nome varchar(255) not null,
poder_de_ataque int not null,
cidade varchar(20) not null,
salario decimal(6,2) not null,
anti_heroi varchar (3) not null,
poder_de_defesa int not null,
usa_capa varchar(3) not null,
apelo_comercial varchar(3) not null,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe (id)
);

insert into tb_personagem(nome, poder_de_ataque, cidade, salario, 
anti_heroi, poder_de_defesa, usa_capa, apelo_comercial,classe_id) values ("jorge", 4000,
"são paulo", 4988.09,"não",654,"não","não",3); 
insert into tb_personagem(nome, poder_de_ataque, cidade, salario, 
anti_heroi, poder_de_defesa, usa_capa, apelo_comercial,classe_id) values ("ana", 6000,
"manaus", 9988.09,"sim",1000,"sim","sim", 1); 
insert into tb_personagem(nome, poder_de_ataque, cidade, salario, 
anti_heroi, poder_de_defesa, usa_capa, apelo_comercial,classe_id) values ("largatixa", 1000,
"rio de janeiro", 2988.09,"sim",7656,"sim","sim",5); 
insert into tb_personagem(nome, poder_de_ataque, cidade, salario, 
anti_heroi, poder_de_defesa, usa_capa, apelo_comercial,classe_id) values ("jajá", 5090,
"cuiaba", 7948.29,"sim",345566,"sim","sim",2); 
insert into tb_personagem(nome, poder_de_ataque, cidade, salario, 
anti_heroi, poder_de_defesa, usa_capa, apelo_comercial,classe_id) values ("caveira", 2000,
"fortaleza", 9999.99,"não",7665,"não","sim",1); 

select * from tb_personagem;

select * from tb_personagem where poder_de_ataque>=2000;

select * from tb_personagem where poder_de_defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.classe_id 
where tb_classe.id = 1;




