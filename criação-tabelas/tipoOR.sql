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
--CRIAR TIPO TELEFONE
CREATE OR REPLACE TYPE tp_NumTelefone AS OBJECT ( 
    Numero VARCHAR2 (9) 
); 

/

CREATE OR REPLACE TYPE tp_Telefones AS VARRAY(2) OF tp_NumTelefone; 


/

--CRIAR OS TIPOS PESSOA E CLIENTE 
CREATE OR REPLACE TYPE tp_Pessoa AS OBJECT ( 
    CPF CHAR(3), 
    Nome VARCHAR2 (255), 
    Email VARCHAR2 (255), 
    Data_Nascimento DATE, 
    Endereco tp_lista_Endereco, 
    telefone tp_Telefones
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
    --dono REF tp_Cliente,
    Nome VARCHAR2 (255), 
    Espécie VARCHAR2 (255), 
    Raça VARCHAR2 (255), 
    Cor VARCHAR2 (255), 
    Data_de_nascimento DATE
    --MÉTODOS 
); 

/
ALTER TYPE tp_pet ADD ATTRIBUTE (dono REF tp_Cliente) CASCADE;

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
    Nome VARCHAR2 (255),
    --MÉTODOS 
    FINAL MEMBER PROCEDURE exibir_detalhes
); 

/

CREATE OR REPLACE TYPE BODY tp_Produto AS
FINAL MEMBER PROCEDURE exibir_detalhes IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Codigo: ' || TO_CHAR(Codigo));
        DBMS_OUTPUT.PUT_LINE('Nome: ' || Nome);
        DBMS_OUTPUT.PUT_LINE('Preco: ' || TO_CHAR(Preco));
        DBMS_OUTPUT.PUT_LINE('Lote: ' || Lote);
        DBMS_OUTPUT.PUT_LINE('Quantidade em estoque: ' || TO_CHAR(Estoque));
        DBMS_OUTPUT.PUT_LINE('Data de validade: ' || TO_CHAR(Validade));
    END;
END;
/

DECLARE
    item1 tp_Produto;
    item2 tp_Produto;
BEGIN
    SELECT VALUE(p) INTO item FROM tb_Produto p WHERE Codigo = '1';
    item1.exibir_detalhes();
    SELECT VALUE(o) INTO item FROM tb_Produto o WHERE Codigo = '2';
    item2.exibir_detalhes();
END;

/

CREATE OR REPLACE TYPE tp_Atende AS OBJECT ( 
    funcionario REF tp_Funcionario, 
    pet REF tp_Pet, 
    servico REF tp_Servico, 
    cliente REF tp_Cliente, 
    dt_atendimento TIMESTAMP
    --MÉTODOS 
); 

/

CREATE OR REPLACE TYPE tp_Consulta AS OBJECT ( 
    veterinario REF tp_Veterinario, 
    pet REF tp_Pet, 
    cliente REF tp_Cliente, 
    produto REF tp_Produto, 
    dt_consulta TIMESTAMP,
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
    cliente REF tp_Cliente, 
    produto REF tp_Produto, 
    dt_compra TIMESTAMP, 
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

