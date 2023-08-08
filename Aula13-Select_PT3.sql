
select carga from cursos group by carga; /*Utilizando o GROUP BY faz com que o agrupamento seja feito, o resultado pode parecer que faz a mesma coisa que o distinct, mas na verdade eles fazem coisas bem diferentes.*/

select carga, count(nome) from cursos group by carga; /*O resultado deste comando mostra cada carga com a quantidade de cursos que possui esta carga,
no caso de 10 horas só tem um Curso, de 30 horas tem 8 Cursos e assim por diante.*/

select carga, count(nome) from cursos where totaulas = 30 group by carga; /*Neste caso, este comando mostra a agrupação pela carga, mas apenas os valores de carga que possuem um total de aulas igual a 30*/

select carga, count(nome) from cursos where totaulas = 30 group by carga having count(nome) > 3; /*HAVING "Expressão" serve para filtrar mais ainda o que será mostrado na Lista,
neste exemplo, ele apareceria apenas as linhas que tinham o total de aula igual a 30 e mostraria apenas qual a carga e a quantidade em cada um, mas tendo HAVING count(nome) > 3,
faz com que apenas os grupos que possuem mais de 3 linhas possam aparecer, no caso deste exemplo só um cumpre esta condição. Para que o HAVING funcione ele a coluna que ele está filtrando precisa aparece no select (aqui) from...*/

select avg(carga) from cursos;
select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);