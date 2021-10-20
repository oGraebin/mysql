create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(200),
faixa_de_preço varchar(10),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(200),
controle varchar(500),
valor double,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 1", "Faixa 3");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 2", "Faixa 5");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 3", "Faixa 2");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 4", "Faixa 4");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 5", "Faixa 1");

select * from tb_categoria;

insert into tb_produto (nome, controle, valor, id_categoria) values ("Loratadina", "liberado", 25.50, 1);
insert into tb_produto (nome, controle, valor, id_categoria) values ("luftal", "liberado", 30.50, 3);
insert into tb_produto (nome, controle, valor, id_categoria) values ("canfora", "liberado", 12.50, 5);
insert into tb_produto (nome, controle, valor, id_categoria) values ("ansitec", "controlado", 60.50, 4);
insert into tb_produto (nome, controle, valor, id_categoria) values ("exodus", "controlado", 80.50, 2);
insert into tb_produto (nome, controle, valor, id_categoria) values ("camisinha", "liberado", 10.50, 5);
insert into tb_produto (nome, controle, valor, id_categoria) values ("escova de dents", "liberado", 24.50, 1);
insert into tb_produto (nome, controle, valor, id_categoria) values ("shampoo e condicionador", "liberado", 40.50, 3);

select * from tb_produto;

select * from tb_produto where valor >= 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%h%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria
where id_categoria = 2
