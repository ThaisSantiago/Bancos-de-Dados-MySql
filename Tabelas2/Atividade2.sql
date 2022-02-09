create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (15) not null, 
tamanho varchar (10) not null,
acompanhamento varchar (10) not null,
primary key (id)
);

insert into tb_categoria (tipo, tamanho, acompanhamento) VALUES 
("Pizza Salgada", "Grande", "Suco"),
("Pizza Salgada", "Grande", "Refri"),
("Pizza Doce", 	"Grande", "Chá") ,
("Esfiha Doce", "Pequena", "Caipirinha"),
("Esfiha Salgada", "Pequena", "Cerveja");
select * from tb_categoria;


use db_pizzaria_legal;

create table tb_pizza (
id bigint auto_increment,
id_categoria bigint,
sabor varchar (30) not null,
tipo varchar (20) not null, 
tamanho varchar (10) not null,
preco decimal (4,2) not null,
entrega boolean not null,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_pizza (sabor, tipo, tamanho, preco, entrega, id_categoria) VALUES 
("Mussarela", "Pizza Salgada", "Grande", '55.00', true, 1),
("Calabresa", "Pizza Salgada", "Grande", '50.00', true, 1),
("Frango",    "Pizza Salgada", "Grande", '60.00', true, 1),
("Carne", 	"Pizza Salgada", "Pequena",'32.00', false, 1),
("4 Queijos", "Pizza Salgada", "Grande", '57.00', true, 2),
("Chocolate", "Pizza Doce", 	 "Grande", '60.00', false, 3),
("Brigadeiro","Esfiha Doce",   "Pequena",'15.00', false, 4),
("Prestígio", "Esfiha Salgada","Pequena",'15.00', false, 4);

select * from tb_pizza where preco >= "45.00";
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where sabor like "%C%";
select * from tb_pizza inner join tb_categoria on tb_pizza.id_categoria = tb_categoria.id 
where tb_pizza.tamanho = "pequena";


