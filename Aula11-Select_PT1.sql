select * from cursos order by nome; /*Com este comando o MySQL pega uma coluna e organiza baseado nela,
se for uma coluna que contenha textos então ela será organizada por ordem alfabetica se for uma coluna que contenha números, então organizará por ordem numerica.*/

select * from cursos order by nome desc; /*E caso coloquemos desc no final do select ele fará a ordem reversa, no caso de uma ordem alfabetica, ele faz de Z-A ao invez de A-Z*/ 
select * from cursos order by nome asc; /*De uma forma parecida, se colocarmos asc no final do select ele fará com que a lista fica em ordem ascendente, A-Z, que é o mesmo efeito de apenas não colocar desc ou asc*/

select ano, nome, carga from cursos order by ano, nome; /* Com este comando não só listamos as linhas pela coluna nome, como tambem filtramos as colunas fazendo com que apenas as colunas nome,
carga e ano apareçam e não outras colunas. Como tambem podemos ordenar por duas colunas diferentes fazendo com que ordene primeiro pela primeira coluna e depois ordene pela segunda,
como tambem podemos mudar a ordem em que as colunas aparecem, dependendo de como coloca a ordem logo depois do Select*/


select * from cursos where ano = "2016" order by nome; /*Com isso se torna possivel não filtrar as colunas como tambem filtrar as linhas. Neste exemplo ele apenas mostra as linhas em que o valor "ano" é "2016" */

select * from cursos where ano <= 2016 order by ano, nome; /*Tambem podemos fazer a seleções com condições de maior ou menor que, mas estes geralmente só funcionam em capos que possuem algarismos números, 
este por exemplo pega todos os cursos que apareceram em 2016 ou anos anteriores.*/

select * from cursos where totaulas between '20' and '30' order by nome; /*Fazendo este comando podemos especificar quantos aulas queremos mais ou menos, ou seja, não é um número exato mas é entre um espaço especifico*/

select nome, descricao, ano from cursos where ano in (2014, 2016) order by ano, nome; /*Este tipo de seleção funciona de um jeito parecido com  o "ano" = "2014",
mas com está versão é possivel colocar mais de um valor possivel, neste caso 2014, 2016 */

select * from cursos where carga > 30 and totaulas < 30 order by ano, nome; /*Tambem podemos utilizar alguns operadores logicos como o AND ou o OR para podermos especificar ainda mais a lista, neste exemplo,
na lista só irá aparecer cargas maiores que 35, mas só aparecerá se o totaulas for menor que 30 */

select * from cursos where carga > 30 or totaulas < 30 order by idcurso; /*Este é o exemplo com o OR*/