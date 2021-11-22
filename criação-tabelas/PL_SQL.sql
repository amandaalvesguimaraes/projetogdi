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
