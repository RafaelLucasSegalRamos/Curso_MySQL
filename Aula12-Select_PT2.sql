select * from cursos;

select * from cursos where nome="PHP";

select * from cursos where nome like "%p%"; /*O comando like "%p%" Serve para olhar em campo especifico e ver se neste campo exite aquela letra no caso a letra p,
se houver um % depois do que quer ser pesquisado, ele significa que ele vai mostrar qualquer campo que começe com a letra P. Se o simbolo % estiver atrás da letra P ele mostra todas as linhas em que a ultima letra é P.
Tambem existe mais uma versão, que é se existir um % atrás e na frente da letra P, então ele vai mostrar todas a linhas que possuam uma letra P, sejá nome começo, no fim ou até mesmo no meio,
 ele irá fazer essa diferença. Como está tabela é do padrão UTF-8, letras com acentos tambem contam como uma letra normal.*/
select * from cursos where nome not like "%p%"; /*Com o NOT podemos reverter totalmente o que era ser mostrado, pois ele contraria o que era para ser feito, por exemplo,
 se na pesquisa normalmente ele faz aparecer todas a linhas que possual a letra P no meio com o NOT só mostrara todas as linha que NÃO possuam a letra P */
 
 select * from cursos where nome like "ph%p_"; /*O UNDERLINE faz com que seja obrigátorio o fato que tenha um caractere em frente ao ultimo P e não pode ser um espaço em branco como o % permite.*/
 
select distinct ano from cursos order by ano; /*O DISTINCT faz com que o valor de uma linha em uma coluna apareça apenas uma vez, por exemplo,
se diversos cursos tem 40 horas de carga, e apenas um tem 35 horas de carga, com o DISTINCT carga, só aparecerá 40 e 35 apenas uma vez.*/

select count(*) from cursos; /*Com o count(*) podemos contar quantas linhas existem no cursos, e podemos fazer isso para os outros tambem, veja:*/
select count(*) from gafanhotos;
select count(*) from pessoas;

select count(*) from cursos where carga > 40;
select max(carga) from cursos; /*Com o MAX() podemos definir qual o valor maximo de uma coluna no caso da coluna de carga o valor maximo é 60*/

select min(carga) from cursos; /*Com o MIN() podemos definir qual o valor minimo de uma coluna no caso da coluna de carga o valor minimo é 10*/

select sum(totaulas) from cursos; /*O SUM() soma todas as linhas da coluna do totaulas, que no caso significa se fosse fazer todos os cursos que estão na tabela daria um total de 583 aulas*/
select sum(carga) from cursos; /*No caso aqui mostraria quantas horas demoraria para terminar todos esse cursos*/

select avg(totaulas) from cursos; /*O AVG() faz algo parecido, no caso AVG faz a média entre todos os valores de cada linha da coluna selecionada.*/
select avg(carga) from cursos;