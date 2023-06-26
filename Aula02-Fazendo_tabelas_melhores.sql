/*drop database cadastro; -> Este comando pode apagar uma DataBase(Schema) ou uma Tabela.*/
create database cadastro 
default character set utf8
default collate utf8_general_ci;/* -> Um jeito de criar tabelas com a formatação UTF-8, formatação que aceita pontuações em palavras, no formato brasileiro.*/

create table pessoas(
	ID_pessoa int not null auto_increment, /*A função auto_increment serve para que quando um novo dado seja adcionado ao elemento ele recebera um novo número, um novo id que não podera ser repetido, e será adcionado automaticamente.*/
	nome varchar(30) not null, /*O NOT NULL serve para que quando um dado seja adcionado na tabela, este campo será obrigatorio que ele seja preenchido, do contrario será retornado um erro.*/
    nascimento date,
    sexo enum('M','F', 'O'), /*ENUM('','') faz com que este campo obrigatoriamente tenha um dos dois valores dentro do parenteses, neste caso só poderão ser inseridos os valores 'M' e 'F'*/
    peso decimal(5,2), /*O DECIMAL('*', '*'), é um float, mas mais personalizavel pois o primeiro valo mencionado é o número de casas que serão utilizadas,
    e o segundo valor mencionado é a partir da esquerda quantas das casas mencionadas estarão depois da virgura.  */
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil',
    primary key(ID_pessoa) /*Esta linha serve para definir um valor como chave primaria, como por exemplo cpf, RG, entre outros. Fazendo com que cada item adicionado seja um item unico.*/
) default charset = utf8;

describe pessoas;