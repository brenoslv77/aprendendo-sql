/*====================================================================
Criação de banco de dados: CREATE DATABASE nome_do_banco_exemplo
=====================================================================*/

-- o comando "create database" é usado para criar um novo banco de dados,
-- no nosso caso estamos criando um banco de dados chamado biblioteca e ele 
-- vai guardar nossas tabelas de aluno, biblioteca e livro
create database pessoal;

/*====================================================================
Listar os bancos do servidor: SHOW DATABASES 
======================================================================*/
show databases;

/*====================================================================
Selecionar um banco de dados: USE nome_do_banco_exemplo
======================================================================*/
-- Antes de manipular qualquer db é extremamente importante selecionar qual 
-- o banco vai ser usado, pois um servidor guarda mais de um db
use pessoal;

/*=======================================================================
Excluir um banco de dados: DROP DATABASE nome_do_banco_exemplo
=========================================================================*/
drop database pessoal;

/*=======================================================================
Criação de tabelas: CREATE TABLE nome_exemplo_tabela(nome_coluna TIPO)
=========================================================================*/
-- é importante verificar qual o db que esta selecionado, em caso de dúvida, execute o 
-- comando use nome_do_banco_exemplo
-- Cada coluna da tabela deve ser passada com o seu respectivo tipo de dado

-- id_info é a CHAVE PRIMÁRIA (PRIMARY KEY).
-- Ela garante que cada pessoa tenha um identificador único.
-- NOT NULL significa "obrigatório" (não pode ficar vazio).
create table info(
id_info int primary key not null,
nome VARCHAR(100) not null,
email VARCHAR(120) not null, 
idade INT not null
);

/*====================================================================================
Listar tabelas do banco: SHOW TABLES;
=====================================================================================*/
SHOW TABLES;

/*====================================================================================
Excluir uma tabela: DROP TABLE nome_exemplo_tabela;
=====================================================================================*/
-- esse comando exclui a tabela e todos os registro dentro dela.
drop table info;

/*====================================================================================
selecionado uma tabela: SELECT * from nome_exemplo_tabela
=====================================================================================*/
select * from info;

/*====================================================================================
Inserindo dados na tabela: INSERT INTO nome_exemplo_tabela
=====================================================================================*/
insert into info (id_info, nome, email, idade)
values ('1','Breno', 'breno@gmail.com', '16'),
('2','Joazinho','joazinho@senac.com', '17'); 


-- Aprendendo + Atividade: colocar mais 1 linha na tabela 
-- insert into info (id_info, nome, email, idade)
-- values ('2','Joazinho','joazinho@senac.com', '17'); 


/*====================================================================================
Excluindo linhas na tabela: delete from alunos where nome = primeiro_valor
=====================================================================================*/
-- para apagar a linha usamos o DELETE
delete from info where id_info = 1;

UPDATE info 
set email = "joao@senac.com", idade = 16
where id_info = 2; 

-- autorizar a fazer alteração e atualização do banco de dados
SET SQL_SAFE_UPDATES = 0;

-- AUTO_INCREMENT, faz o MySQL gerar um número automaticamente (1,2,3...).
-- ENUM restrige os valores possíveis.
-- ensina "domínio" (regras de negócios na tabela).
-- o DEFAULT diz qual é a opção padrão em caso de não preencher no momento do insert. 
create table Familiares (
id_familia int primary key AUTO_INCREMENT, 
nome VARCHAR(100) not null,
idade VARCHAR(150),
categoria enum('MÃE', 'PAI', 'AMIGO', 'AMIGA', 'AMIGO(A)') DEFAULT 'AMIGO(A)'
);

select * from Familiares;

insert into Familiares (nome, idade, categoria)
values ('henrique', '25', 'AMIGO');

insert into Familiares (nome, idade)
values ('uelton', '25');