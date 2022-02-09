create database db_generation_game;
use db_generation_game;

create table tb_classe(
id bigint not null auto_increment,
classe varchar(10) not null,
classificação int(10) not null,
dificuldade enum ('1', '2', '3') not null,
primary key(id)
);

create table tb_personagem(
id_tb_categoria bigint not null auto_increment,
nome varchar(20) not null,
habilidade varchar (20) not null,
ataque decimal not null,
defesa decimal not null,
id_classe bigint,
primary key(id_tb_categoria),
foreign key(id_classe) references tb_classe(id));

insert into tb_classe(classe, classificação, dificuldade) VALUES 
("Ação", "14", '2'),           
("Corrida", "0", '2'),            
("Terror", "16", '3');          

insert into tb_personagem(nome, habilidade, ataque, defesa, id_classe) VALUES 
("Altair", "Tiro", 2000,'2000', 3),
("Bruce", "Velocidade", 1800, 1900, 2),
("Carly", "Tiro", 2000, 1500, 3),
("Dim", "Inteligência", 1200, 2000, 1),
("Ector","Tiro", 1900,'1020', 3);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome LIKE 'c%';
select * from tb_classe inner join tb_personagem; 
select * from tb_personagem inner join tb_classe
on tb_personagem.id_classe = tb_classe.id
where ataque >= "2000";



