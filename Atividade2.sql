create table tb_produtos (
id bigint auto_increment,
eletronicos varchar(30) not null,
cores varchar(20) not null,
marcas varchar(30) not null,
preco decimal(6,2) not null,
estoque enum ('S','N'),
primary key(id)
);

insert into tb_produtos (eletronicos, cores, marcas, preco, estoque) VALUES
("smartwatch", "rose", "Iwo", '389.00', 'S'),
("celular", "preto", "Samsung", '2000.00', 'S'),
("tablet", "branco", "LG", '1000.00', 'N'),
("impressora", "preta", "Epson", '980.00', 'S'),
("teclado", "preto", "Dell", '120.00', 'S'),
("telefone", "branco", "Intelbras", '90.00', 'S'),
("som", "cinza", "JBL", '1900.00', 'N'),
("GPS", "preto", "Satélite", '215.00', 'S');
---------------------------------------------------------------------------------------------------------------------------------
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
select * from tb_produtos;