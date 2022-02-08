create database db_escola;


create table tb_escola (
id bigint auto_increment,
nome varchar(30) not null, 
idade int(20) not null,
dt_matricula varchar(30) not null,
nota decimal(4,1) not null,
sexo enum ('F','M'),
primary key(id)
);

insert into tb_escola (nome, idade, dt_matricula, nota, sexo) values 
("Anna", "17",  "2020-01-20", '8.0', 'F'),
("Bruce", "15", "2021-03-30", '8.2', 'M'),
("Carla", "18", "2019-02-22", '10.0','F'),
("David", "12", "2008-02-14", '7.5', 'M'),
("Ema", "16",   "2020-01-30", '5.1','F'),
("Fábio", "15", "2018-02-20", '6.0', 'M'),
("Giu", "17",   "2021-03-04", '4.0','F'),
("Hugo", "17",  "2019-02-25", '8.9', 'M');
---------------------------------------------------------------------------------------------------------------------------------
select * from tb_escola where nota > 7;
select * from tb_escola where nota < 7;