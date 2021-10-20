create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(200),
faixa_de_preço varchar(10),
primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(200),
ingredientes varchar(500),
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

insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Frango", "Massa, molho, frango e queijo", 45.50, 3);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Marguerita", "Massa, molho, manjericão e mussarela de búfula", 67.50, 4);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Portuguesa", "Massa, molho, palmito, presunto, ervilha, ovo e queijo", 35.50, 2);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Alho", "Massa, molho, alho frito queijo", 25.50, 1);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Abobrinha com mussarela", "Massa, molho, abobrinha e mussarela", 24.50, 1);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Estrogonofe", "Massa, molho de estrogonofe, filé mignon em tiras e batata palha", 75.50, 4);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Chocolate", "Massa, chocolate e granulado", 40, 5);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Banana com canela", "Massa, banana e canela" , 37.50,5);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Calabresa", "Massa, molho, calabresa e cebola" , 37.50,5);

select * from tb_pizza;

select * from tb_pizza where valor >= 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.id_categoria
where id_categoria = 2
