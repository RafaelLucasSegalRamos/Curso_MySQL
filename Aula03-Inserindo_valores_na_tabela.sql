insert into pessoas(nome, nascimento, sexo, peso, altura, nacionalidade) values ('Bruna', '2004-09-05', 'F', '59.00', '1.65', 'EUA'),
('Pedro', '2000-03-17', 'M', '50.00', '1.45', default),
('Mariana', '2012-05-05', 'F', '50.00', '1.68', 'Irlanda');
/*Colocando uma virgula ao invez de um ponto e virgula depois dos parenteses torna possivel adcionar novos valores de uma vez.*/

/*Se o valores forem inseridos na mesma ordem da qual as colunas se posicionam então não é necessário colocar os nomes de colunas antes dos valores*/
insert into pessoas values (default, 'Romeo', '1975-12-01', 'M', '95.2', '1.74', default); 
/*Todos os valores foram inseridos na tabela, repeitando a ordem de acordo com as virgulas. E isto tambem funciona mesmo se forem adicionados novos dados*/
select * from pessoas;
/*Select serve para selecionar linha com valores especificos, mas do jeito que foi escrito ele apenas mostra todos os valores da tabela*/