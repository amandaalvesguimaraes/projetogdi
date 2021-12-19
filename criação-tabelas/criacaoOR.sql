DROP TABLE tb_Cliente;

DROP TYPE tp_Cliente;
DROP TYPE tp_Pessoa;

--CRIAR TIPO ENDEREÇO QUE É ATRIBUTO DE PESSOA
CREATE OR REPLACE TYPE tp_Endereco AS OBJECT ( 
    Numero NUMBER, 
    CEP VARCHAR2 (255), 
    Cidade VARCHAR2 (255), 
    Rua VARCHAR2 (255), 
    Bairro VARCHAR2 (255), 
    Complemento VARCHAR2 (255) 
); 
/

CREATE OR REPLACE TYPE tp_lista_endereco AS TABLE OF tp_Endereco;
/

--CRIAR OS TIPOS PESSOA E CLIENTE 
CREATE OR REPLACE TYPE tp_Pessoa AS OBJECT ( 
    CPF CHAR(3), 
    Nome VARCHAR2 (255), 
    Email VARCHAR2 (255), 
    Data_Nascimento DATE, 
    Endereco tp_lista_endereco 
    -- MÉTODOS 
) NOT FINAL NOT INSTANTIABLE; 

/
-- HERANÇA DE TIPOS 
CREATE TYPE tp_Cliente UNDER tp_Pessoa( 
    --CONSTRUCTOR FUNCTION tp_Cliente(x1 tp_Pessoa) RETURN SELF AS RESULT 
); 
 

/
--CRIAR TIPO FUNCIONARIO QUE HERDA DE PESSOA
CREATE TYPE tp_Funcionario UNDER tp_Pessoa ( 
    Matricula VARCHAR2 (255), 
    Salario INT, 
    Cargo VARCHAR2 (255), 
    Data_de_admissao date, 
    supervisor REF tp_Funcionario, 
 
    CONSTRUCTOR FUNCTION tp_Funcionario(x1 tp_Pessoa) RETURN SELF AS RESULT

)NOT FINAL; 

/


--CRIAR TIPO VETERINÁRIO QUE HERDA DE FUNCIONÁRIO
CREATE TYPE tp_Veterinario UNDER tp_Funcionario (  
    Numero_CRMV VARCHAR2 (255), 
 
    CONSTRUCTOR FUNCTION tp_Veterinario(x1 tp_Funcionario) RETURN SELF AS RESULT 
); 

/
--CRIAR TIPOS PET, SERVIÇO, PRODUTO, ATENDE, CONSULTA E COMPRA
CREATE OR REPLACE TYPE tp_Pet AS OBJECT ( 
    CPF_Cliente CHAR(3), 
    Nome VARCHAR2 (255), 
    Espécie VARCHAR2 (255), 
    Raça VARCHAR2 (255), 
    Cor VARCHAR2 (255), 
    Data_de_nascimento DATE
    --MÉTODOS 
); 

/

CREATE OR REPLACE TYPE tp_Servico AS OBJECT ( 
    Tipo_Servico VARCHAR2 (255), 
    Preco_Servico NUMBER 
    --MÉTODOS 
); 

/

CREATE OR REPLACE TYPE tp_Produto AS OBJECT ( 
    Codigo INTEGER, 
    Preco NUMBER, 
    Lote CHAR(4), 
    Estoque NUMBER, 
    Fabricacao DATE,  
    Validade DATE,  
    Marca VARCHAR2 (255),  
    Nome VARCHAR2 (255) 
    --MÉTODOS 
); 

/

CREATE OR REPLACE TYPE tp_Atende AS OBJECT ( 
    CPF_Func CHAR (3), 
    Nome_Pet VARCHAR2 (255), 
    Tipo_Servico VARCHAR2 (255), 
    CPF_Cliente CHAR (3), 
    Data_Atendimento DATE, 
    Hora_Atendimento VARCHAR2 (255) 
    --MÉTODOS 
); 

/

CREATE OR REPLACE TYPE tp_Consulta AS OBJECT ( 
    CPF_Vet CHAR (3), 
    Nome_Pet VARCHAR (255), 
    CPF_Cliente CHAR (3), 
    Data_Consulta DATE, 
    Hora_Consulta VARCHAR2 (255), 
    Cod_Produto INTEGER, 
    --MÉTODOS 
    MAP MEMBER FUNCTION comparaData RETURN DATE
); 

/

CREATE OR REPLACE TYPE BODY tp_Consulta AS 
MAP MEMBER FUNCTION comparaData RETURN DATE IS 
  p DATE := Data_Consulta;
    BEGIN
        RETURN p;
    END;
END;

/

CREATE OR REPLACE TYPE tp_Compra AS OBJECT ( 
    CPF_Cliente CHAR(3), 
    Codigo_Produto INTEGER, 
    Data_Compra DATE, 
    Hora_Compra VARCHAR2 (255), 
    --MÉTODOS 
    MEMBER PROCEDURE exibir_detalhes
); 

/

CREATE OR REPLACE TYPE BODY tp_Compra AS
MEMBER PROCEDURE exibir_detalhes IS
    BEGIN
        DBMS.OUTPUT.PUT_LINE('Detalhes da compra');
        DBMS.OUTPUT.PUT_LINE('CPF Cliente: ' || CPF_Cliente);
        DBMS.OUTPUT.PUT_LINE('Produto comprado: ' || TO_CHAR(Cod_Produto));
        DBMS.OUTPUT.PUT_LINE('Data da compra: '|| TO_CHAR(Data_Compra) || Hora_Compra);
    END;
END;

/

--CRIAR TIPO TELEFONE
CREATE OR REPLACE TYPE tp_NumTelefone AS OBJECT ( 
    Numero VARCHAR2 (9) 
); 

/

CREATE OR REPLACE TYPE tp_ListaNumeros AS VARRAY(2) OF tp_NumTelefone; 

/

CREATE OR REPLACE TYPE tp_Telefone AS OBJECT ( 
    Num_telefone tp_ListaNumeros, 
    CPF CHAR(3) 
    --MÉTODOS 
); 

/

-- CRIAÇÃO DE TABELAS

/*CREATE TABLE tb_Pessoa OF tp_Pessoa NESTED TABLE Endereco STORE AS nt_endereco;*/

CREATE TABLE tb_Cliente OF tp_Cliente (
    CPF PRIMARY KEY
) NESTED TABLE Endereco STORE AS nt_endereco_cliente;

CREATE TABLE tb_Endereco OF tp_Endereco (
    CEP PRIMARY KEY,
    Numero NOT NULL,
    Cidade NOT NULL,
    Rua NOT NULL,
    Bairro NOT NULL
);

CREATE TABLE tb_Funcionario OF tp_Funcionario (
    CPF PRIMARY KEY,
    Salario NOT NULL,
    Cargo NOT NULL,
    Data_de_admissao NOT NULL,
    Matricula NOT NULL,
    supervisor SCOPE IS tb_Funcionario
) NESTED TABLE Endereco STORE AS nt_endereco_funcionario;

CREATE TABLE tb_Veterinario OF tp_Veterinario (
    CPF PRIMARY KEY,
    Numero_CRMV NOT NULL
) NESTED TABLE Endereco STORE AS nt_endereco_veterinario;

CREATE TABLE tb_Pet OF tp_Pet (
    CPF_Cliente NOT NULL,
    Nome NOT NULL,
    Espécie NOT NULL,
    Raça NOT NULL,
    Cor NOT NULL,
    Data_de_nascimento NOT NULL,
    CONSTRAINT pet_pkey PRIMARY KEY (Nome, CPF_Cliente)
);

CREATE TABLE tb_Servico OF tp_Servico (
    Tipo_Servico PRIMARY KEY,
    Preco_Servico NOT NULL
);

CREATE TABLE tb_Produto OF tp_Produto (
    Codigo PRIMARY KEY,
    Preco NOT NULL,
    Lote NOT NULL,
    Estoque NOT NULL,
    Marca NOT NULL,
    Nome NOT NULL
);

CREATE TABLE tb_Consulta OF tp_Consulta (
    CONSTRAINT consulta_pkey PRIMARY KEY (CPF_Vet, Nome_Pet, CPF_Cliente)
);
CREATE TABLE tb_Telefone OF tp_Telefone (
    CPF PRIMARY KEY,
    Num_telefone NOT NULL
);

CREATE TABLE tb_Compra OF tp_Compra(
    CONSTRAINT compra_pkey PRIMARY KEY (CPF_Cliente, Codigo_Produto)
);
CREATE TABLE tb_Atende OF tp_Atende(
    CONSTRAINT atende_pkey PRIMARY KEY (CPF_Func, Nome_Pet, Tipo_Servico, CPF_Cliente)
);