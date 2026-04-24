CREATE DATABASE festival;
USE festival;

CREATE TABLE artistas (
 id_artista INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 genero VARCHAR(50) NOT NULL
);

CREATE TABLE palco (
 id_palco INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 capacidade INT
);

INSERT INTO artistas (nome, genero)
VALUES ('Coldplay', 'Rock');

INSERT INTO palco (nome, capacidade)
VALUES ('Palco Principal', 5000);

SELECT * FROM artistas;
SELECT nome, capacidade FROM palco;

SELECT * FROM palcos;

UPDATE artistas
SET genero = 'Pop Rock'
WHERE nome = 'Coldplay';

DELETE FROM palcos
WHERE nome = 'Palco Principal'