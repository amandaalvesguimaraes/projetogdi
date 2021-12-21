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
    telefone tp_Telefones,
    -- MÉTODOS 
    MEMBER PROCEDURE infos
) NOT FINAL NOT INSTANTIABLE; 

/
-- HERANÇA DE TIPOS 
CREATE TYPE tp_Cliente UNDER tp_Pessoa( 
); 
 

/
--CRIAR TIPO FUNCIONARIO QUE HERDA DE PESSOA
CREATE TYPE tp_Funcionario UNDER tp_Pessoa ( 
    Matricula VARCHAR2 (255), 
    Salario NUMBER, 
    Cargo VARCHAR2 (255), 
    Data_de_admissao date, 
    supervisor REF tp_Funcionario, 
    OVERRIDING MEMBER PROCEDURE infos,
    MEMBER FUNCTION salario_anual RETURN NUMBER

)NOT FINAL; 

/
CREATE OR REPLACE TYPE BODY tp_Funcionario AS
    OVERRIDING MEMBER PROCEDURE infos IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(CPF);
        DBMS_OUTPUT.PUT_LINE(Nome);
        DBMS_OUTPUT.PUT_LINE(Salario);
        DBMS_OUTPUT.PUT_LINE(Cargo);
    END;

    MEMBER FUNCTION salario_anual RETURN NUMBER IS
    BEGIN
        RETURN Salario*12;
    END;
END;
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
    Preco_Servico NUMBER, 
    --MÉTODOS 
    ORDER MEMBER FUNCTION comparaServico (SELF IN OUT NOCOPY tp_Servico, x tp_Servico) RETURN NUMBER
); 

/

CREATE OR REPLACE TYPE BODY tp_Servico AS 
    ORDER MEMBER FUNCTION comparaServico(SELF IN OUT NOCOPY tp_Servico, x tp_Servico) RETURN NUMBER IS
    BEGIN
        IF SELF.Preco_Servico > x.Preco_Servico THEN
            RETURN 1;
        ELSIF SELF.Preco_Servico < x.Preco_Servico THEN
            RETURN -1;
        ELSE
            RETURN 0;
        END IF;
    END;
END;


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
    FINAL MEMBER PROCEDURE exibir_detalhes,
    MAP MEMBER FUNCTION qnt_produtos RETURN NUMBER
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

--Retorna a quantidade de produtos com preço maior que 30
MAP MEMBER FUNCTION qnt_produtos RETURN NUMBER IS
     aux_contagem NUMBER;
         BEGIN   
             SELECT COUNT (*) INTO aux_contagem FROM tb_Produto WHERE Preco > 30;
             RETURN aux_contagem;
         END;
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
    dt_compra TIMESTAMP
    --MÉTODOS 
); 

