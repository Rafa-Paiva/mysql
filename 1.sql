create database db_RH;
-- Seleciona o Banco de Dados para uso 
use db_RH;
-- Cria tabela no banco de dados
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
sexo char not null,
cargo varchar(255) not null,
salario decimal (10,2),
horario varchar(255),
primary key (id)
);
-- Insere os dados na tabela
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Vinicius", "M", "Dev JR", 1500.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Fernando", "M", "Dev Pleno", 10000.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Maria", "F", "Diretora Executiva", 15000.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Talita", "F", "CEO", 30000.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Diego", "M", "CEO", 30000.00, "DIURNO");

-- Visualiza os dados
select * from tb_funcionarios;
-- safe update
SET SQL_SAFE_UPDATES=0;

-- Atualizando dado da tabela
UPDATE tb_funcionarios SET salario = 1900.50 WHERE nome LIKE 'Vinicius';

-- Salarios menores que 2000 reais
select * from tb_funcionarios where salario<2000;

-- Salarios maiores que 2000 reais
select * from tb_funcionarios where salario>2000;

SELECT * FROM tb_funcionarios;