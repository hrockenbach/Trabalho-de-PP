create database bd_helen;
use bd_helen;
CREATE TABLE professores_senac(
	id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    idade int
);
DROP TABLE professores_senac;

insert into professores_senac(id,nome,email,idade) 
values (1, "Vitor Hugo Lopes", "vitor@email.com", 29),
(2, "Rafaella Egues","rafa@email.com", 25);

delete from professores_senac where id = 1;

describe professores_senac;

select * from professores_senac;

insert into professores_senac(id,nome,email,idade) 
values (3, "Bruno Schimmit", "bruno@email.com", 27);

select id, nome from professores_senac
where id=2;

select id, nome from professores_senac
where nome like "%tor%" or (idade < 27 and idade > 20);

select id, nome from professores_senac
where nome like "%tor%" or idade > 20;

alter table professores_senac
add column genero varchar (255);

select * from professores_senac;

alter table professores_senac
drop column genero;

select * from professores_senac;

alter table professores_senac
change genero genero enum("masculino","feminino","não binário");

update professores_senac
set genero = "masculino" where id = 2;

update professores_senac
set genero = "feminino" where id = 3;

alter table professores_senac add column formacao
enum ("graduação", "especialização", "mestrado", "doutorado")
default "graduação";

alter table professores_senac
change id id int auto_increment;

select lower(nome) from professores_senac;

select sum(idade) from professores_senac;

select avg(idade) from professores_senac;

select count(*) from professores_senac
where genero = "feminino";

select min(idade) from 
professores_senac;

select max(idade)from
professores_senac;

select curdate()
from dual;

select datediff(curdate(),"2020-08-14")
from dual;

select concat("O professor", nome,"tem",idade,"anos")
from professores_senac;