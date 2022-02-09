create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
prescricao varchar (30) not null, 
generico boolean not null,
comprimido boolean not null,
primary key (id)
);


insert into tb_categoria (prescricao, generico, comprimido) VALUES 
("Dor muscular", true, true),
("Tosse", true, false),
("Artrite", false, false) ,
("Cólica", true, true),
("Dor de cabeça", true, false);


create table tb_produtos(
id bigint auto_increment,
id_categoria bigint,
nome varchar (30) not null,
marca varchar (20) not null, 
quantidade int not null,
preco decimal (4,2) not null,
entrega boolean not null,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);


insert into tb_produtos (nome, marca, quantidade, preco, entrega, id_categoria) VALUES 
("Ibuprofeno", "Voltaren", "2", '40.00', true, 1),
("Droproprizina", "Medley", "1", '10.00', true, 2),
("Tylemax", "Genérico", "3", '80.00', true, 3),
("Ácido Mefenâmico", "Genérico", "1",'12.00', false, 1),
("Dipirona", "Genérico", "5", '30.00', true, 2);

select * from tb_produtos where preco >= "50.00";
select * from tb_produtos where preco between 3.00 and 60.00;
select * from tb_produtos where nome like "%B%";
select * from tb_produtos inner join tb_categoria on tb_produtos.id_categoria = tb_categoria.id 
where tb_produtos.marca = "Genérico";