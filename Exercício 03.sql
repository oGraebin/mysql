create	 	database	escola;
use escola;
create table alunes(
	id int(5) auto_increment,
    nome varchar(30) not null,
    genero enum('ela', 'elu', 'ele', 'outro'),
    dataNascimento date,
    nota int(6),
    primary key (id));
insert into alunes (nome, genero, datanascimento, nota) values ("Joana", "ela", '1995-05-10', 6);
insert into alunes (nome, genero, datanascimento, nota) values ("Raí", "elu", '1996-02-04', 7);
insert into alunes (nome, genero, datanascimento, nota) values ("Luan", "ele", '1999-10-12', 8);
insert into alunes (nome, genero, datanascimento, nota) values ("Carol", "ela", '1984-11-14', 5);
insert into alunes (nome, genero, datanascimento, nota) values ("Til", "outro", '1994-09-28', 10);
select * from alunes;
    
select * from alunes where nota > 7;
select * from alunes where nota < 7;
update alunes set nota = 8 where id = 5;
