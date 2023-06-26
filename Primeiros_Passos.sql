create database cadastro;

create table pessoas(
	id_pessoas int not null auto_increment key unique,
	nome varchar(45),
    idade tinyint,
    nacionalidade varchar(45),
    sexo char(1),
    altura float,
    peso float
    );
    
    describe pessoas;