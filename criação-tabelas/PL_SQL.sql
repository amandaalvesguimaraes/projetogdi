/*RECORD usando o record pra criar um type_pessoa, com todos os mesmos atributos da tabela Pessoa, depois criando um reg_pessoa e inserindo todos os valores dos campos
para adicionar o record na tabela Pessoa */
<<record_block>>
DECLARE
    type type_pessoa IS RECORD
    (cpf char(3)  ,
    nome varchar2(255)  ,
    email varchar2(255)  ,
    data_nascimento DATE,
    cep varchar2(255));
    reg_pessoa type_pessoa;
BEGIN
    reg_pessoa.cpf := '666';
    reg_pessoa.nome := 'Beatriz';
    reg_pessoa.email := 'beatriz@email.com';
    reg_pessoa.data_nascimento := to_date('15/07/1999', 'dd/mm/yy');
    reg_pessoa.cep := '110';
    INSERT INTO Pessoa VALUES reg_pessoa;
END record_block;

/* Usando o table, %type e for in loop para criar uma tabela contendo uma única coluna, correspondente ao CPF de um Funcionário.
Usamos o Funcionario.cpf%TYPE em cima da tabela já existente no banco de dados, Funcionário e depois usamos um FOR IN LOOP para mostrar que a TABLE em PL SQL
criada contém o cpf de todos os funcionários */

<<funcionario_cpf_block>>
DECLARE
    TYPE funcionario_cpf_type IS TABLE OF Funcionario.cpf%type
    INDEX BY BINARY_INTEGER;
    funcionario_cpf_table funcionario_cpf_type;
    i BINARY_INTEGER;
BEGIN
    i := 1;
    FOR current_row IN (SELECT cpf FROM Funcionario) LOOP
        funcionario_cpf_table(i) := current_row.cpf;
        i := i + 1;
    END LOOP;
    FOR j IN 1..i-1 LOOP
        DBMS_OUTPUT.Put_line(funcionario_cpf_table(j));
    END LOOP;
END funcionario_cpf_block;

/*usando o bloco anônimo e criando dentro deste bloco um RECORD do tipo veterinario contendo os campos cpf e crmv,
e depois usando o DBMS_OUTPUT.Put_line para mostrar o valor do campo veterinario no record. */
DECLARE
    type type_veterinario IS RECORD
    (cpf VARCHAR2(3),
    numero_crmv VARCHAR2(255));
    veterinario_01 type_veterinario;
BEGIN
    veterinario_01.cpf := '007';
    veterinario_01.numero_crmv := '1879';
    DBMS_OUTPUT.Put_line(veterinario_01.numero_crmv);
END;

--Inserir um novo pet na tabela Pet
CREATE OR REPLACE PROCEDURE InsertPet (aux IN Pet%rowtype) IS
BEGIN
INSERT INTO Pet (CPF_Cliente, Nome, Espécie, Raça, Cor, Data_de_nascimento) VALUES (aux.CPF_Cliente, aux.Nome, aux.Espécie, aux.Raça, aux.Cor, aux.Data_de_nascimento);
END;

--Função que retorna se foi receitado algum produto na consulta veterinária
CREATE OR REPLACE FUNCTION checarConsulta (cpfVet Consulta.CPF_Vet%type, nomePet Consulta.Nome_Pet%type, cpfCliente Consulta.CPF_Cliente%type)
RETURN VARCHAR2
IS 
        produto Consulta.Cod_Produto%type;
        retorno VARCHAR2(255);
BEGIN 
        SELECT Consulta.Cod_Produto INTO produto
        FROM Consulta
        WHERE Consulta.CPF_Vet = cpfVet AND Consulta.Nome_Pet = nomePet AND Consulta.CPF_Cliente = cpfCliente;

        IF produto is NULL THEN
            retorno := 'Nenhum produto foi receitado nesta consulta!';
        ELSIF (produto >= '1' AND produto <= '3') OR produto = '6' OR produto = '9' OR produto = '10' OR produto = '27' THEN
            retorno := 'Foi receitado um produto da marca LimpaPet!';
        ELSIF (produto >= '12' AND produto <= '19') OR produto = '22' OR produto = '23' OR produto = '29' THEN
            retorno := 'Foi receitado um produto da marca FoodPet!';
        ELSIF produto = '4' OR produto = '5' THEN
            retorno := 'Foi receitado um produto da marca SaúdePet!';
        ELSIF produto = '7' OR produto = '8' THEN
            retorno := 'Foi receitado um produto da marca DestesPet!';
        ELSIF produto = '11' OR produto = '28' THEN
            retorno := 'Foi receitado um produto da marca TranspoPet!';
        ELSIF produto = '20' OR produto = '21' OR produto = '26' THEN
            retorno := 'Foi receitado um produto da marca PlayPet!';
        ELSIF produto = '24' OR produto = '25' THEN
            retorno := 'Foi receitado um produto da marca ConfortPet!';
        END IF;
        RETURN retorno;
END;


-- inserindo produto fora da validade --
CREATE OR REPLACE TRIGGER fora_da_validade
BEFORE INSERT ON Produto
FOR EACH ROW
DECLARE 
    fora_da_validade EXCEPTION; 
BEGIN
    IF :NEW.Validade < SYSDATE() THEN
        DBMS_OUTPUT.PUT_LINE('FORA DA VALIDADE');
        RAISE fora_da_validade;
    END IF;
EXCEPTION 
    WHEN fora_da_validade THEN 
    Raise_application_error(-12847,'Produto se encontra fora da validade-' || 'Não é possível inserir produtos fora da validade dentro do banco de dados.');
END;

-- inserindo data de nascimento do pet para um dia que ainda não chegou --
CREATE OR REPLACE TRIGGER data_nascimento_pet_invalida
BEFORE INSERT ON Pet
FOR EACH ROW
DECLARE 
    data_nascimento_pet_invalida EXCEPTION; 
BEGIN
    IF :NEW.Data_de_nascimento > SYSDATE() THEN
        DBMS_OUTPUT.PUT_LINE('DATA DE NASCIMENTO DO PET INVALIDA');
        RAISE data_nascimento_pet_invalida;
    END IF;
EXCEPTION 
    WHEN data_nascimento_pet_invalida THEN 
    Raise_application_error(-22983,'Data de nascimento do pet é inválida -' || 'Não é possível inserir pets que ainda não nasceram.');
END;


-- tentativa de realizar uma compra fora do horário de funcionamento --
CREATE OR REPLACE TRIGGER compra_fora_horario_funcionamento
BEFORE INSERT ON Compra
DECLARE 
    compra_fora_horario_funcionamento EXCEPTION; 
BEGIN 
    IF TO_NUMBER(TO_CHAR(SYSDATE, 'HH24')) > 20 OR TO_NUMBER(TO_CHAR(SYSDATE, 'HH24')) < 8 
    THEN 
        RAISE compra_fora_horario_funcionamento; 
    END IF; 
EXCEPTION 
 WHEN compra_fora_horario_funcionamento THEN 
    Raise_application_error(-22541,'FORA DO HORÁRIO DE FUNCIONAMENTO' || 'Não é possível realizar uma compra após o horário de funcionamento'); 
END;


--criando pacotes com procedimentos para inserção de produtos--

CREATE OR REPLACE PACKAGE produtos AS
PROCEDURE novoProduto(p_codigo Produto.Codigo%TYPE,
    p_Preco Produto.Preco%TYPE,
    p_Lote Produto.Lote%TYPE,
    p_Estoque Produto.Estoque%TYPE,
    p_Fabricacao Produto.Fabricacao%TYPE,
    p_Validade Produto.Validade%TYPE,
    p_Marca Produto.Marca%TYPE
    p_Nome Produto.Nome%TYPE
);
END produtos;


CREATE OR REPLACE PACKAGE BODY produtos AS
PROCEDURE novoProduto(p_codigo Produto.Codigo%TYPE,
    p_Preco Produto.Preco%TYPE,
    p_Lote Produto.Lote%TYPE,
    p_Estoque Produto.Estoque%TYPE,
    p_Fabricacao Produto.Fabricacao%TYPE,
    p_Validade Produto.Validade%TYPE,
    p_Marca Produto.Marca%TYPE,
    p_Nome Produto.Nome%TYPE
) IS
BEGIN
    INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES (p_Codigo, p_Preco, p_Lote, p_Estoque, p_Fabricacao, p_Validade, p_Marca, p_Nome);
END novoProduto;

END produtos;
