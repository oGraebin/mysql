create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(200),
faixa_de_preço varchar(10),
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(200),
fornecedor varchar(500),
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

insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Abacaxi", "José", 12, 1);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Manga", "Maria", 20, 3);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Paitaya", "José", 5, 5);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Alho", "José", 30, 4);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Morango", "Maria", 55, 2);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Pera", "Maria", 3, 5);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Laranja", "José", 15.50, 1);
insert into tb_produto (nome, fornecedor, valor, id_categoria) values ("Uva", "Maria", 19.50, 3);

select * from tb_produto;

select * from tb_produto where valor >= 30;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria
where id_categoria = 2
