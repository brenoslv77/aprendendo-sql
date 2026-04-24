use loja_breno_raphael;
 
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;
 
CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome       VARCHAR(100) NOT NULL,
  cidade     VARCHAR(100) NOT NULL
);
 
INSERT INTO clientes (nome, cidade)
VALUES ('Carlos Silva', 'São Paulo'),
  ('Mariana Costa',  'Campinas'),
  ('João Pedro',     'Santos'),
  ('Ana Beatriz',    'Guarulhos'),
  ('Lucas Almeida',  'Osasco');
 
 
 
CREATE TABLE produtos (
  id_produto   INT PRIMARY KEY AUTO_INCREMENT,
  nome_produto VARCHAR(100) NOT NULL,
  preco        DECIMAL(10,2) NOT NULL
);
 
INSERT INTO produtos (nome_produto, preco)
 VALUES ('Mouse',   80),
  ('Teclado', 150),
  ('Monitor', 950),
  ('Headset', 220),
  ('Webcam',  300);
 
 
 
CREATE TABLE pedidos (
  id_pedido  INT PRIMARY KEY AUTO_INCREMENT,
  data_pedido DATE NOT NULL,
  id_cliente  INT NOT NULL,
  id_produto  INT NOT NULL,
  CONSTRAINT fk_pedidos_clientes
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  CONSTRAINT fk_pedidos_produtos
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
 
INSERT INTO pedidos (data_pedido, id_cliente, id_produto) 
VALUES ('2026-03-01', 1, 1),  -- Carlos Silva - Mouse
  ('2026-03-01', 2, 3),  -- Mariana Costa - Monitor
  ('2026-03-02', 3, 2),  -- João Pedro - Teclado
  ('2026-03-02', 1, 4),  -- Carlos Silva - Headset
  ('2026-03-03', 4, 5),  -- Ana Beatriz - Webcam
  ('2026-03-04', 5, 2),  -- Lucas Almeida - Teclado
  ('2026-03-05', 2, 2);  -- Mariana Costa - Teclado

SHOW TABLES;
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM pedidos;


SELECT * FROM clientes
WHERE cidade = 'São Paulo';
 
SELECT * FROM produtos
WHERE preco > 200;

SELECT * FROM clientes;
UPDATE clientes
SET cidade = 'São Bernardo'
WHERE id_cliente = 3;  

UPDATE produtos
SET preco = '1100'
WHERE id_produto = 3;

UPDATE produtos
SET preco = '280',
nome_produto = 'Headset Gamer'
WHERE id_produto = 4;

 
DELETE FROM pedidos
WHERE id_pedido = '7';
 
DELETE FROM pedidos
WHERE id_pedido = '6';
DELETE FROM clientes
WHERE id_cliente = '5';
 