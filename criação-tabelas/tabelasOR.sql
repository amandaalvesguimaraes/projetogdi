-- CRIAÇÃO DE TABELA CLIENTE QUE TEM NESTED TABLE ENDEREÇO 
CREATE TABLE tb_Cliente OF tp_Cliente (
    CPF PRIMARY KEY
)NESTED TABLE Endereco STORE AS nt_endereco_cliente;


--CRIAÇÃO TABELA FUNCIONARIO QUE TEM AUTORELACIONAMENTO SUPERVISIONA
--SCOPE IS É UTILIZADO PARA RESTRIGIR O USO DO REF EM UMA ÚNICA TABELA
CREATE TABLE tb_Funcionario OF tp_Funcionario (
    CPF PRIMARY KEY,
    Salario NOT NULL,
    Cargo NOT NULL,
    Data_de_admissao NOT NULL,
    Matricula NOT NULL,
    supervisor SCOPE IS tb_Funcionario
)NESTED TABLE Endereco STORE AS nt_endereco_funcionario;


--CRIAÇÃO TABELA VETERINÁRIO
CREATE TABLE tb_Veterinario OF tp_Veterinario (
    CPF PRIMARY KEY,
    Numero_CRMV NOT NULL
)NESTED TABLE Endereco STORE AS nt_endereco_veterinario;


--CRIAÇÃO TABELA PET
--TEM UM CLIENTE COMO ATRIBUTO, POR ISSO USAMOS WITH ROWID PARA PEGAR O ENDEREÇO
--FÍSICO DO ARMAZENAMENTO DE CLIENTE
CREATE TABLE tb_Pet OF tp_Pet (
    Nome PRIMARY KEY,
    Espécie NOT NULL,
    Raça NOT NULL,
    Cor NOT NULL,
    Data_de_nascimento NOT NULL,
    dono WITH ROWID REFERENCES tb_Cliente
);


--CRIAÇÃO TABELA SERVIÇO
CREATE TABLE tb_Servico OF tp_Servico (
    Tipo_Servico PRIMARY KEY,
    Preco_Servico NOT NULL
);

--CRIAÇÃO TABELA PRODUTO
CREATE TABLE tb_Produto OF tp_Produto (
    Codigo PRIMARY KEY,
    Preco NOT NULL,
    Lote NOT NULL,
    Estoque NOT NULL,
    Marca NOT NULL,
    Nome NOT NULL
);

--CRIAÇÃO TABELA CONSULTA
CREATE TABLE tb_Consulta OF tp_Consulta (
    veterinario WITH ROWID REFERENCES tb_Veterinario,
    pet WITH ROWID REFERENCES tb_Pet,
    cliente WITH ROWID REFERENCES tb_Cliente,
    produto WITH ROWID REFERENCES tb_Produto,
    dt_consulta PRIMARY KEY

);

--CRIAÇÃO TABELA COMPRA 
CREATE TABLE tb_Compra OF tp_Compra(
    dt_compra PRIMARY KEY,
    cliente WITH ROWID REFERENCES tb_Cliente NOT NULL,
    produto WITH ROWID REFERENCES tb_Produto NOT NULL
);

--CRIAÇÃO TABELA ATENDE
CREATE TABLE tb_Atende OF tp_Atende(
    funcionario WITH ROWID REFERENCES tb_Funcionario,
    pet WITH ROWID REFERENCES tb_Pet,
    servico WITH ROWID REFERENCES tb_Servico,
    cliente WITH ROWID REFERENCES  tb_Cliente,
    dt_atendimento PRIMARY KEY
);