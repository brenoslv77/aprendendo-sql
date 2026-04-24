-- Atividade: criar mais uma tabela

create table livro(
titulo VARCHAR(120),
autor VARCHAR(80), 
genero VARCHAR(80),
ano_publicacao INT
);

select * from livro;

insert into Livro (titulo, autor, genero, ano_publicacao)
values ('Dom Casmurro', 'Machado de assis','Literatura', '1899');

