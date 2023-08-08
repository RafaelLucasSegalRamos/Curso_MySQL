 use cadastro;
 desc gafanhotos;
 select * from gafanhotos;
 select * from cursos;
 
 alter table gafanhotos add column cursopreferido INT after profissao;
 
 alter table gafanhotos drop column cursopreferido;
 
  alter table gafanhotos 
  add foreign key (cursopreferido) 
  references cursos(idcurso);
  /*Utilizando o ADD FOREIGN KEY podemos definir qual coluna da tabela se tornará uma tabela que está referenciando uma outra tabela. 
  E com o REFERENCES podemos definir qual é a tebela que o valor está sendo pegado, no caso da TABELA cursos está sendo puxada a COLUNA idcursos.*/
 
delete from cursos where idcurso = 28;

select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select g.nome, c.nome, c.ano from gafanhotos as g inner join cursos as c on c.idcurso = g.cursopreferido; 
/*Utilizando este comando o MySQL faz uma junção de acordo com as chaves primarias e as chaves estrangeiras, no caso as chaves estrangeiras gafanhotos.cursopreferido com a chave primaria cursos.idcurso e 
quando a chave estrangeira é igual a chave primaria o resto da linha que a chave primária pertence o acompanha. No caso INNER JOIN ou só colocar JOIN não faz diferença neste caso.*/
/*Utilizando o cursos AS c, podemos ao invez de ficar escrvendo cursos.algo podemos colocar apenas c.algo, assim economizando mais espaço, o mesmo valendo para gafanhoto AS g*/

/*Agora as diferenças entre os JOIN é que o INNER JOIN quando utilizado o select com ele, ele mostra apenas os gafanhotos que possuem umm curso favorito,
e os que possuem um valor nulo apenas não aparecem lista que o select fez.*/

select g.nome, c.nome, c.ano from gafanhotos as g right  outer join cursos as c on c.idcurso = g.cursopreferido; 
/*OUTER JOIN faz com que mesmo as linhas não foram relacionadas tambem apareçam, mas para isso temos que definir qual das duas tabelas terá preferência,
no caso dessa vez terá preferência na tabela gafanhotos pois a tabela gafanhotos está a esquerda e antes do OUTER JOIN está escrito LEFT que define que o que terá preferência é o que está a esquerda, 
para definir que o que está a direita tenha preferência  coloque ao invez de LEFT coloque RIGHT*/
