CREATE TABLE produto(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    dia INT NOT NULL,
    preco_unitario NUMERIC(6,2) NOT NULL
);

CREATE TABLE venda_produto(
	id SERIAL PRIMARY KEY,
    sexo VARCHAR(1) NOT NULL,
    hora TIME NOT NULL,
    produto_id INT NOT NULL REFERENCES produto(id),
    quantidade INT NOT NULL,
    preco_pago NUMERIC(8,2) NOT NULL,
    forma_pg VARCHAR(1) NOT NULL CHECK (forma_pg IN ('c','d'))
);

CREATE TABLE compra_produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    dia INT NOT NULL,
    quantidade INT NOT NULL,
    preco_total NUMERIC(8,2) NOT NULL
);
