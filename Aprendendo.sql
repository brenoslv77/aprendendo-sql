create database escola;
show databases;
use escola;

create table alunos(
 id_aluno int primary key auto_increment,
 nome varchar(100) not null,
    idade int,
    id_turma int not null,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
    );

insert into alunos (nome, idade, id_turma)
values ('Breno', '16', '1'),
('João','17', '1'),
('Maria', '26', '2'),
('Marco','19',2);

drop table alunos; 

SHOW TABLES;

delete from alunos where id_aluno = 2;

UPDATE alunos 
set turma = "WEB" , idade = 16
where id_livro = 2; 

SET SQL_SAFE_UPDATES = 0;


create table professor (
 id_professor int primary key AUTO_INCREMENT,
    nome varchar(100) not null,
    disciplina varchar(150),
    tipo_contrato enum('CLT', 'PJ', 'Concurso') DEFAULT 'CLT'
);

select * from professor;

insert into professor (nome, disciplina, tipo_contrato)
values ('Laercio', 'Banco de Dados', 'PJ');

insert into professor (nome, disciplina)
values ('Ana Cláudia', 'Lógica');


/* Atualizar o nome da professora "Ana claudia" para "Ana do TI"
Atualizar o contrato do professor Laércio para "CONCURSO"
inserir o professor "Adalberto" da disciplina de "Aplicativo" com o contrato "PJ'
*/

UPDATE professor
set nome = "Ana do TI"
where id_professor = 2; 

UPDATE professor
set tipo_contrato = "CONCURSO"
where id_professor = 1; 

insert into professor (nome, disciplina, tipo_contratO)
values ('adalberto', 'Aplicativo', 'PJ');


create table turma (
 id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR (50) NOT NULL,
    sala CHAR(3),
    periodo enum("Manhã", "Tarde", "Noite"),
    id_professor int not null,
    FOREIGN KEY (id_professor) references professor(id_professor)
    );

show tables;

insert into turma (nome_turma, sala, periodo, id_professor)
values ('L13 IoT', '35B', 'Manhã', '1'),
('TI', '28A', 'Noite', '2');

select * from professor;
select * from turma;
select * from alunos;

delete from turma where id_turma = 2;
