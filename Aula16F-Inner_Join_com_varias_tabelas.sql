create table assiste(
	IDA int not null auto_increment,
    datass date,
    IDg int,
    IDc int,
    primary key(IDA),
    foreign key(IDg) references gafanhotos(id),
    foreign key(IDc) references cursos(idcurso)
) default charset utf8;

insert into assiste values
(default ,'2014-03-01', "1", "2");

select * from assiste;

insert into assiste values
(default ,'2014-03-01', "1", "2");

select g.nome, c.nome, a.datass from gafanhotos g join assiste a on g.id = a.IDg join cursos c on c.idcurso = a.IDc order by g.nome;