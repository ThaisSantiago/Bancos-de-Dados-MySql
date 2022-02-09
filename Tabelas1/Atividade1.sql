create table tb_funcionarios(
id bigint not null auto_increment,
nome varchar (30) not null,
cargo varchar (30) not null,
dtcontrato date,
sexo enum ('M', 'F'),
salario decimal (6,2),
primary key (id)
);

insert into tb_funcionarios(nome, cargo, dtcontrato, sexo, salario ) values
("Armando","Dev Pleno", "2017-12-02", 'M', 6600.00),
("Bruna","Dev Júnior", "2021-11-03", 'F', 2500.00),
("Caue", "Dev Júnior", "2020-08-18", 'M', 2500.00),
("Diana", "Dev Sênior", "2009-03-11", 'F', 8900.00);
----------------------------------------------------------------------------------------------------------------------------------
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

select * from tb_funcionarios;
desc tb_funcionarios;
