CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    genero VARCHAR(10),
    cidade VARCHAR(100)
);

CREATE TABLE produtos (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10, 2)
);

CREATE TABLE vendas (
    venda_id INT PRIMARY KEY,
    cliente_id INT FOREIGN KEY REFERENCES clientes(cliente_id),
    produto_id INT FOREIGN KEY REFERENCES produtos(produto_id),
    quantidade INT,
    data_venda DATE
);
