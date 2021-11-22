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
