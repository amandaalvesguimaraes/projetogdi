CREATE TABLE Pessoa (
    CPF CHAR (3),
    Nome VARCHAR2 (255) NOT NULL,
    Email VARCHAR2 (255) NOT NULL,
    Data_Nascimento DATE,
    CEP CHAR (8),
    CONSTRAINT pessoa_pkey PRIMARY KEY (CPF)
);

CREATE TABLE Cliente (
    CPF CHAR (3),
    CONSTRAINT cliente_pkey PRIMARY KEY (CPF),
    CONSTRAINT Cliente_fkey FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
);

CREATE TABLE Produto 
( 
    Codigo INTEGER NOT NULL, 
    Preco NUMBER, 
    Lote CHAR (4), 
    Estoque NUMBER, 
    Fabricacao DATE, 
    Validade DATE, 
    Marca VARCHAR2 (255) NOT NULL, 
    Nome VARCHAR2 (255) NOT NULL, 
    CONSTRAINT produto_pkey PRIMARY KEY (Codigo), 
    CONSTRAINT produto_checkPreco CHECK (Preco > 0), 
    CONSTRAINT produto_checkEstoque CHECK (Estoque >= 0) 
 
);

CREATE TABLE Compra 
( 
    CPF_Cliente CHAR (3), 
    Codigo_Produto INTEGER NOT NULL, 
    Data_Compra DATE, 
    Hora_Compra VARCHAR2 (255), 
    CONSTRAINT compra_pkey PRIMARY KEY (CPF_Cliente, Codigo_Produto), 
    CONSTRAINT compra_fkey1 FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF), 
    CONSTRAINT compre_fkey2 FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo) 
 
);

CREATE TABLE Pet ( 
    CPF_Cliente CHAR (3), 
    Nome VARCHAR2 (255), 
    Espécie VARCHAR2 (255), 
    Raça VARCHAR2 (255), 
    Cor VARCHAR2 (255), 
    Data_de_nascimento DATE, 
    CONSTRAINT cpfcliente_fkey FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF),
    CONSTRAINT nome_pkey PRIMARY KEY (CPF_Cliente, Nome)
 
);

CREATE TABLE Funcionario ( 
 CPF char(3), 
 Matricula VARCHAR2 (255) NOT NULL, 
 Salario int NOT NULL, 
 Cargo VARCHAR2 (255) NOT NULL, 
 Data_de_admissao date, 
 CPF_Supervisor char(3), 
 CONSTRAINT funcionario_pkey PRIMARY KEY (CPF), 
 CONSTRAINT cpffuncionario_fkey FOREIGN KEY (CPF) REFERENCES Pessoa(CPF), 
 CONSTRAINT cpfsupervisor_fkey FOREIGN KEY (CPF_Supervisor) REFERENCES Funcionario(CPF), 
 CONSTRAINT salario_check CHECK (Salario >= 1100) 
);

CREATE TABLE Veterinario ( 
 CPF char(3),  
 Numero_CRMV VARCHAR2 (255) NOT NULL, 
 CONSTRAINT veterinario_pkey PRIMARY KEY(CPF), 
 CONSTRAINT veterinario_fkey FOREIGN KEY(CPF) REFERENCES Pessoa(CPF) 
);

CREATE TABLE Consulta ( 
    CPF_Vet CHAR (3), 
    Nome_Pet VARCHAR2 (255), 
    CPF_Cliente CHAR (3), 
    Data_Consulta DATE, 
    Hora_Consulta VARCHAR2 (255), 
    Cod_Produto INTEGER, 
    CONSTRAINT cpfvet_fkey FOREIGN KEY (CPF_Vet) REFERENCES Veterinario(CPF), 
    CONSTRAINT nomecpf_fkey FOREIGN KEY (CPF_Cliente, Nome_Pet) REFERENCES Pet(CPF_Cliente, Nome), 
    CONSTRAINT codproduto_fkey FOREIGN KEY (Cod_Produto) REFERENCES Produto(Codigo)
);

CREATE TABLE Endereco (
    Numero NUMBER NOT NULL,
    CEP VARCHAR2 (255) NOT NULL,
    Cidade VARCHAR2 (255) NOT NULL,
    Rua VARCHAR2 (255) NOT NULL,
    Bairro VARCHAR2 (255) NOT NULL,
    Complemento VARCHAR2 (255),
    CONSTRAINT endereco_pk PRIMARY KEY (CEP,Numero,Rua)
);

CREATE TABLE Telefone (
    Num_telefone VARCHAR2 (9) NOT NULL,
    CPF CHAR(3) NOT NULL,
    CONSTRAINT telefone_pk PRIMARY KEY (Num_telefone, CPF),
    CONSTRAINT telefone_fk FOREIGN KEY (CPF) REFERENCES Pessoa (CPF)
);

CREATE TABLE Servico ( 
    Tipo_Servico VARCHAR2 (255) NOT NULL, 
    Preco_Servico NUMBER NOT NULL, 
    CONSTRAINT servico_pk PRIMARY KEY (Tipo_Servico), 
    CONSTRAINT servico_checkPreco CHECK (Preco_Servico >= 0) 
);

CREATE TABLE Atende ( 
    CPF_Func CHAR (3) NOT NULL, 
    Nome_Pet VARCHAR2 (255) NOT NULL,  
    Tipo_Servico VARCHAR2 (255) NOT NULL, 
    CPF_Cliente CHAR (3),  
    Data_Atendimento DATE,  
    Hora_Atendimento VARCHAR2 (255), 
    CONSTRAINT cpffunc_fkey_2 FOREIGN KEY (CPF_Func) REFERENCES Funcionario(CPF),  
    CONSTRAINT nomepet_fkey_2 FOREIGN KEY (CPF_Cliente, Nome_Pet) REFERENCES Pet(CPF_Cliente, Nome), 
    CONSTRAINT cpfcliente_fkey_2 FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF), 
    CONSTRAINT tiposervico_fkey_2 FOREIGN KEY (Tipo_Servico) REFERENCES Servico(Tipo_Servico) 
);