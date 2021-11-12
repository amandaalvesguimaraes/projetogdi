CREATE TABLE Pessoa (
    CPF CHAR (11) PRIMARY KEY,
    Nome VARCHAR (255) NOT NULL,
    Email VARCHAR (255),
    Data de nascimento VARCHAR (255),
    CEP CHAR (7)
    
);

CREATE TABLE Cliente (
    CPF CHAR (11) FOREIGN KEY REFERENCES Pessoa(CPF), /* só que CPF tbm é primary key de Cliente*/
    Nome VARCHAR (255) NOT NULL,
    Email VARCHAR (255),
    Data de nascimento VARCHAR (255)
);

CREATE TABLE Produto
(
    Codigo CHAR (3),
    Preco integer,
    Lote CHAR (4),
    Estoque integer,
    Fabricacao VARCHAR (255),
    Validade VARCHAR (255),
    Marca VARCHAR (255) NOT NULL,
    Nome VARCHAR (255) NOT NULL,
    CONSTRAINT produto_pkey PRIMARY KEY (Codigo),
    CONSTRAINT produto_checkPreco CHECK (Preco > 0),
    CONSTRAINT produto_checkEstoque CHECK (Estoque >= 0)

);

CREATE TABLE Compra
(
    CPF_Cliente CHAR (3),
    Codigo_Produto CHAR (3),
    Data_Compra VARCHAR (255),
    Hora_Compra VARCHAR (255),
    CONSTRAINT compra_pkey PRIMARY KEY (CPF_Cliente, Codigo_Produto),
    CONSTRAINT compra_fkey1 FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF),
    CONSTRAINT compre_fkey2 FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)

);