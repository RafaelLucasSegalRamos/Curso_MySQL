alter table pessoas add profissao varchar(10);
/*Utilizando este comando é possivel adcionar, ou remover, novas colunas em uma tabela*/
alter table pessoas
drop column profissao; 
/*-> é assim que ela é apagada*/

alter table  pessoas
add column profissao varchar(10) after nome;
/*Não existe add column 'nome' 'tipo' before nome; , só existe o after*/
/*Para colocar antes temos que fazer assim: */
alter table pessoas add column teste varchar(10) first;
/*Mas fora isto, é impossivel colocar uma coluna usando before ou algo do tipo, os unicos comandos possivei para isso são: after 'nome da coluna'; e first*/
alter table pessoas modify profissao varchar(20);
/*Utilizando este comando é possivel alterar uma coluna já criada, sem ter que apaga-la e recolocar os dados*/

alter table pessoas
change column profissao prof varchar(30);
/*Com o change é possivel modificar até o nome da coluna mas é necessário reecolocar o nome anterior da coluna, o que pode acabar ficando chato, por isso usamos o modify e só quando mudarmos o nome usamos o change*/

alter table pessoas 
rename estudantes;
/*Com este comando é possivel alterar nomes de tabelas*/

alter table estudantes 
rename pessoas;

create table if not exists cursos /*Utilizando o if not exists 'nome da tabela', podemos criar uma tabela nova sem medo de sobrescrever uma tabela anteriormente criada com o mesmo nome.*/
(
	nome varchar(30) not null unique,
    descricao text, /*TEXT é um tipo de dados que pode ter diversos caracteres ou paragrafos, podendo conter um TEXTO.*/
    carga int unsigned,/*UNSIGNED serve para que os valores inseridos nesta coluna não possam ter sinais, de - ou de +*/
    totaulas int unsigned,
    ano year default '2016'
) default charset = utf8;

alter table cursos
add column id_curso int first;

alter table cursos
add primary key(id_curso);

alter table cursos 
modify column id_curso int auto_increment not null;

drop table cursos;

desc cursos;
desc pessoas;
SELECT 
    *
FROM
    pessoas;
