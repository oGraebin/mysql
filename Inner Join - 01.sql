-- cria banco de dados
create database db_jogo_gen33;

-- Selecionar o banco de dados
use db_jogo_gen33;

-- Criar primeira tabela classe
tb_classescreate table tb_classes(
	id bigint auto_increment,
    nome varchar(255),
    poder varchar(255),
    energia int,
    primary key (id) 
);
-- Popular dados na tabela
insert into tb_classes (nome, poder, energia) 
		values ("maga", "bola de fogo", 90);
insert into tb_classes (nome, poder, energia) 
		values ("arqueira", "chuva de flechas", 100);
insert into tb_classes (nome, poder, energia) 
		values ("sereia", "agua transbordante", 120);
insert into tb_classes (nome, poder, energia) 
		values ("morte", "sugadora de almas", 150);

select * from tb_classes;

-- criar tabela personagens
create table tb_personagens(
id bigint auto_increment,
nome varchar(20),
genero varchar(20),
raça varchar(20),
ataque int,
vida int,
primary key (id),
fk_id_classe bigint,
foreign key (fk_id_classe) references tb_classes(id)
);

-- Inserir/popular dados na tabela personagem
insert into  tb_personagens (nome, genero, raça, ataque, vida, fk_id_classe) 
values ("Gustavo","ele", "Jacaré", 20, 150, 1);
insert into  tb_personagens (nome, genero, raça, ataque, vida, fk_id_classe) 
values ("Joice","ela", "humana", 20, 150, 3);
insert into  tb_personagens (nome, genero, raça, ataque, vida, fk_id_classe) 
values ("Juan","elu", "bullywug", 8, 50, 4);
insert into tb_personagens (nome, genero,raça, ataque,vida, fk_id_classe)
values ("Raniere", "Menine", "Humana", 22, 100, 2);

select * from tb_personagens;

-- um select que retorne os personagens com ataque maior que 1000
select * from tb_personagens where ataque > 10;

-- um select que retorne os personagens com a vida entre 40 e 101
select * from tb_personagens where vida between 40 and 101;

-- Um select itilizando LIKE para buscar os personagens com a letra J
select * from tb_personagens where nome like "%j%";

-- Um select com inner join entre a tabela classe e personagens 
select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.fk_id_classe;

-- Um select onde traga todes os personagens de uma classe especifica ()
select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.fk_id_classe
where fk_id_classe = 2

-- Como tiro inserção duplicada
drop

delete from tb_personagens where id between 4 and 6;

truncate table tb_personagens;