select * from pessoas;  

select * from cursos;

insert into cursos values
('1', 'HTML5 CSS3', 'Curso básico de HTML5 e CSS3','40', '37', '2020'),
('2', 'Photoshop', 'Dicas de ADOBE photoshop','10', '8', '2014'),
('3', 'Jarva', 'Introdução a linguagem JAVA','10', '29', '2000'),
('4', 'PGP', 'Curso básico de PHP','40', '20', '2010'),
('5', 'Algolitimo', 'Curso basico de Hardware ','5', '101', '2012'),
('6', 'Cozinha', 'Ensinado como fazer culinaria vegana','5', '2', '2025'),
('7', 'Engenharia', 'Curso de como construir uma casa', '30', '35', '2024');

/*Para modificar o conteudo de uma célula a gente usa o comando Update, como mostrado a seguir:*/
update cursos 
set nome = 'Java' /*Utilizando o SET podemos definir o que será muda, neste caso o nome mudara para 'Java'*/
where id_curso='3' /*Aqui é onde indicamos o local a ser mudado, no caso será onde o id_curso é igual a 3, a terceira linha.*/
limit 1; /*Utilizando o Limit podemos fazer que quando mais de uma linha for afetada, apenas a quantidade de linhas definidas no limit poderão ser afetadas */

update cursos 
set nome = 'PHP', ano = '2015'
where id_curso = '4';

update cursos 
set nome = 'Algoritimo', descricao='Curso de Lógica de Progamação', carga='20', totaulas='25'
where id_curso = '5' ;

/*É importante sempre ter atenção para caso esteja afetando mais de uma coluna, pois pode ser perigoso mudar diversas colunas de uma vez, pois pode se peder dados importantes apenas por ter feito o update errado.*/
update cursos 
set ano = '2050', carga = '800'
where ano = '2018';
/*Utilizando o Delete é possivel apagar linha de acordo com o que indicado, tendo a mesma proteção que o update.*/
delete from cursos 
where id_curso = '6';

delete from cursos 
where id_curso = '7';

delete from cursos 
where ano = '2018';

/*Este comando é ainda mais perigoso já que ele deleta TODAS AS LINHAS de uma tabela.*/

truncate table cursos;