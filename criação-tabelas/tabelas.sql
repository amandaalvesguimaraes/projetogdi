REM   Script: gdi
REM   projeto de gdi

CREATE TABLE Pessoa ( 
    CPF CHAR (3), 
    Nome VARCHAR (255) NOT NULL, 
    Email VARCHAR (255), 
    Data_de_nascimento VARCHAR (255), 
    CEP CHAR (7), 
    CONSTRAINT pessoa_pkey PRIMARY KEY(CPF) 
     
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

CREATE TABLE Pet ( 
    CPF_Cliente CHAR (3), 
    Nome VARCHAR (255), 
    Espécie VARCHAR (255), 
    Raça VARCHAR (255), 
    Cor VARCHAR (255), 
    Data_de_nascimento DATE, 
    CONSTRAINT cpfcliente_fkey FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF), 
    CONSTRAINT nome_pkey PRIMARY KEY (Nome) 
 
);

CREATE TABLE Consulta ( 
    CPF_Vet CHAR (3), 
    Nome_Pet VARCHAR (255), 
    CPF_Cliente CHAR (3), 
    Data_Consulta DATE, 
    Hora TIME, 
    Cod_Produto CHAR (3), 
    CONSTRAINT cpfvet_fkey FOREIGN KEY (CPF_Vet) REFERENCES Veterinario(CPF), 
    CONSTRAINT nomepet_fkey FOREIGN KEY (Nome_Pet) REFERENCES Pet(Nome), 
    CONSTRAINT cpfcliente_fkey FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF), 
    CONSTRAINT codproduto_fkey FOREIGN KEY (Cod_Produto) REFERENCES Produto(produto_pkey) 
 
);

CREATE TABLE Funcionario ( 
 CPF char(3), 
 Matricula varchar(255) NOT NULL, 
 Salario int NOT NULL, 
 Cargo varchar(255) NOT NULL, 
 Data_de_admissao date, 
 CPF_Supervisor char(3), 
 CONSTRAINT funcionario_pkey PRIMARY KEY (CPF), 
 CONSTRAINT cpffuncionario_fkey FOREIGN KEY (CPF) REFERENCES Pessoa(CPF), 
 CONSTRAINT cpfsupervisor_fkey FOREIGN KEY (CPF_Supervisor) REFERENCES Funcionario(CPF), 
 CONSTRAINT salario_check CHECK (Salario >= 1100) 
);

CREATE TABLE Veterinario ( 
 CPF char(3),  
 Numero_CRMV varchar(255) NOT NULL, 
 CONSTRAINT veterinario_pkey PRIMARY KEY(CPF), 
 CONSTRAINT veterinario_fkey FOREIGN KEY(CPF) REFERENCES Pessoa(CPF) 
);

