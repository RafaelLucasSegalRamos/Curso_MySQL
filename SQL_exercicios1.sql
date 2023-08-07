select * from gafanhotos where sexo="F"; /*Primeiro exercício*/

select nascimento from gafanhotos;
select * from gafanhotos where nacionalidade between 2000 and 2015;/*Segundo exercicio(Não Entendi)*/

select * from gafanhotos where profissao="Programador" and sexo="M";/*Terceiro Exercicio*/

select * from gafanhotos where sexo="F" and nacionalidade="Brasil" and nome like "J%";/*Quarto Exercicio*/

select nome, nacionalidade from gafanhotos where peso<100 and sexo="M" and nacionalidade <> "Brasil" and nome like "%silva%";/*Quinto Exercicio*/

select max(altura) from gafanhotos where nacionalidade="Brasil" and sexo="M";/*Sexta Exercicio*/

select avg(peso) from gafanhotos;/*Setimo Exercicio*/

select min(peso) from gafanhotos where sexo="F" and nacionalidade<>"Brasil";/*Oitavo exercicio(Não entendi)*/

select * from gafanhotos where sexo = "F" and altura > 1.90 /*Nono exercicio*/