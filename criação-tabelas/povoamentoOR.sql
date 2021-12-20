CREATE SEQUENCE seq INCREMENT by 1 START WITH 1;


-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Cliente
INSERT INTO tb_Cliente VALUES (
    tp_Cliente('123', 'Amanda', 'amanda@email.com', to_date('01/03/2001', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('111', 1, 'Recife', 'Rua Jornalista Guerra de Holanda', 'Casa Forte','')),
    tp_Telefones(tp_NumTelefone('999999999')))
    );

INSERT INTO tb_Cliente VALUES (
    tp_Cliente('234', 'Thaís', 'thais@email.com', to_date('16/07/2001', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('112', 2, 'Caruaru', 'Avenida Leão Dourado', 'Kennedy','Apartamento 601')),
    tp_Telefones(tp_NumTelefone('969999999')))
    );

INSERT INTO tb_Cliente VALUES (
    tp_Cliente('345', 'Isabela', 'isabela@email.com', to_date('26/08/1999', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('113', 3, 'Recife', 'Avenida 17 de Agosto', 'Casa Forte','')),
    tp_Telefones(tp_NumTelefone('922999999')))
    );

INSERT INTO tb_Cliente VALUES (
    tp_Cliente('456', 'Lorena', 'lorena@email.com', to_date('28/07/2000', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('114', 4, 'Caruaru', 'Avenida Agamenon Magalhães', 'Mauricio de Nassau','')),
    tp_Telefones(tp_NumTelefone('999999119')))
    );

INSERT INTO tb_Cliente VALUES (
    tp_Cliente('567', 'Daniel', 'daniel@email.com', to_date('13/10/1998', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('115', 5, 'Recife', 'Rua General Polidoro', 'Várzea','')),
    tp_Telefones(tp_NumTelefone('999999991')))
    );

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Funcionario
INSERT INTO tb_Funcionario VALUES (
    tp_Funcionario('678', 'Alice', 'alice@email.com', to_date('13/03/2000', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('116', 6, 'Recife', 'Rua Jornalista Aníbal Fernandes', 'Cidade Universitaria','')),
    tp_Telefones(tp_NumTelefone('999999921')), 
    '101', 1200.00, 'Supervisor', 
    to_date('05/08/2020', 'dd/mm/yy'), 
   NULL)
   );

INSERT INTO tb_Funcionario VALUES (
    tp_Funcionario('789', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis','')), 
    tp_Telefones(tp_NumTelefone('129999921')), 
    '102', 1200.00, 'Veterinário', 
    to_date('05/10/2020', 'dd/mm/yy'), 
    (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'))
    );

INSERT INTO tb_Funcionario VALUES (
    tp_Funcionario('890', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201')), 
    tp_Telefones(tp_NumTelefone('129999121')),
    '103', 2000.00, 'Veterinário', 
    to_date('15/07/2021', 'dd/mm/yy'), 
    (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'))
    );

INSERT INTO tb_Funcionario VALUES (
    tp_Funcionario('891', 'Caio', 'caio@email.com', to_date('10/03/1995', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('119', 9, 'Recife', 'Rua da Hora', 'Espinheiro','')),
     tp_Telefones(tp_NumTelefone('123999121')), 
    '104', 1200.00, 'Atendente', 
    to_date('25/07/2021', 'dd/mm/yy'), 
    (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'))
    );

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Veterinario
INSERT INTO tb_Veterinario VALUES (
    tp_Veterinario('789', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis','')), 
    tp_Telefones(tp_NumTelefone('123499121')), 
    '102', 1200.00, 'Veterinário', 
    to_date('05/10/2020', 'dd/mm/yy'), 
    (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'), '0005')
    );

INSERT INTO tb_Veterinario VALUES (
    tp_Veterinario('890', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy'), 
    tp_lista_endereco(tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201')), 
    tp_Telefones(tp_NumTelefone('123459121')), 
    '103', 2000.00, 'Veterinário', 
    to_date('15/07/2021', 'dd/mm/yy'), 
    (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'), '0006'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Produto
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 15, '1110', 20, to_date('11/05/2021', 'dd/mm/yyyy'), to_date('01/05/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Shampoo'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 15, '1111', 20, to_date('11/05/2021', 'dd/mm/yyyy'), to_date('01/05/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Condicionador'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 15, '1112', 16, to_date('11/05/2021', 'dd/mm/yyyy'), to_date('01/05/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Perfume'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 80, '1113', 7, to_date('01/07/2021', 'dd/mm/yyyy'), to_date('01/10/2022', 'dd/mm/yyyy'), 'SaúdePet', 'Carrapaticida'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 80, '1114', 9, to_date('02/08/2021', 'dd/mm/yyyy'), to_date('01/12/2022', 'dd/mm/yyyy'), 'SaúdePet', 'Vermífugo'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 10, '1115', 31, NULL, NULL, 'LimpaPet', 'Escova de pelo'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 10, '1116', 30, NULL, NULL, 'DentesPet', 'Escova de dentes'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 10, '1117', 25, to_date('06/04/2021', 'dd/mm/yyyy'), to_date('01/04/2022', 'dd/mm/yyyy'), 'DentesPet', 'Creme dental'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 35, '1118', 12, to_date('23/09/2021', 'dd/mm/yyyy'), to_date('01/10/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Tapete higiênico'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 12, '1119', 25, NULL, NULL, 'LimpaPet', 'Areia sanitária'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 70, '1120', 4, NULL, NULL, 'TranspoPet', 'Caixa de transporte'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 50, '1121', 18, to_date('25/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para cães idosos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 40, '1122', 16, to_date('25/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para cães adultos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 40, '1123', 22, to_date('25/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para cães filhotes'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 50, '1124', 10, to_date('14/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para gatos idosos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 40, '1125', 17, to_date('14/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para gatos adultos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 40, '1126', 23, to_date('14/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para gatos filhotes'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 7, '1127', 51, to_date('01/08/2021', 'dd/mm/yyyy'), to_date('01/01/2022', 'dd/mm/yyyy'), 'FoodPet', 'Sachê para cães'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 7, '1128', 46, to_date('01/08/2021', 'dd/mm/yyyy'), to_date('01/01/2022', 'dd/mm/yyyy'), 'FoodPet', 'Sachê para gatos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 20, '1129', 8, NULL, NULL, 'PlayPet', 'Brinquedo para cães'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 20, '1130', 11, NULL, NULL, 'PlayPet', 'Brinquedo para gatos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 5, '1131', 14, to_date('17/09/2021', 'dd/mm/yyyy'), to_date('01/06/2022', 'dd/mm/yyyy'), 'FoodPet', 'Petisco para cães'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 5, '1132', 16, to_date('17/09/2021', 'dd/mm/yyyy'), to_date('01/06/2022', 'dd/mm/yyyy'), 'FoodPet', 'Petisco para gatos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 40, '1133', 14, NULL, NULL, 'ConfortPet', 'Cama para cães'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 40, '1134', 8, NULL, NULL, 'ConfortPet', 'Cama para gatos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 70, '1135', 0, NULL, NULL, 'PlayPet', 'Arranhador para gatos'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 30, '1136', 15, to_date('10/06/2021', 'dd/mm/yyyy'), to_date('01/02/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Desinfetante'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 25, '1137', 24, NULL, NULL, 'TranspoPet', 'Coleira'));
INSERT INTO tb_Produto VALUES (tp_Produto(seq.NEXTVAL, 15, '1138', 13, NULL, NULL, 'FoodPet', 'Recipiente para comida'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Compra
INSERT INTO tb_Compra VALUES (
    tp_Compra(
    (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '123'),
    (SELECT REF(P) FROM tb_Produto P WHERE P.Codigo = 1),
    to_date('01/10/2021', 'dd/mm/yyyy'))
    );

INSERT INTO tb_Compra VALUES (
    tp_Compra(
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        (SELECT REF(P) FROM tb_Produto P WHERE P.Codigo = 2),
        to_date('02/10/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Compra VALUES (
    tp_Compra(
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        (SELECT REF(P) FROM tb_Produto P WHERE P.Codigo = 2),
        to_date('05/11/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Compra VALUES (
    tp_Compra(
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '345'),
        (SELECT REF(P) FROM tb_Produto P WHERE P.Codigo = 1),
        to_date('15/10/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Compra VALUES (
    tp_Compra(
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '123'),
        (SELECT REF(P) FROM tb_Produto P WHERE P.Codigo = 3),
        to_date('07/11/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Compra VALUES (
    tp_Compra(
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        (SELECT REF(P) FROM tb_Produto P WHERE P.Codigo = 4),
        to_date('09/10/2021', 'dd/mm/yyyy'))
        );

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Servico
INSERT INTO tb_Servico VALUES (tp_Servico('Banho pequeno', '30'));
INSERT INTO tb_Servico VALUES (tp_Servico('Banho medio', '40'));
INSERT INTO tb_Servico VALUES (tp_Servico('Banho grande', '50'));
INSERT INTO tb_Servico VALUES (tp_Servico('Hidratação', '37'));
INSERT INTO tb_Servico VALUES (tp_Servico('Tosa Higihênica', '25'));
INSERT INTO tb_Servico VALUES (tp_Servico('Tosa Máquina', '35'));
INSERT INTO tb_Servico VALUES (tp_Servico('Tosa tesoura', '50'));
INSERT INTO tb_Servico VALUES (tp_Servico('Pacote completo', '100'));
INSERT INTO tb_Servico VALUES (tp_Servico('Banho antialérgico', '55'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Pet
INSERT INTO tb_Pet VALUES (
    tp_Pet(
        'Tutty', 'Cachorro', 'Cocker Spaniel', 'Branca', 
        to_date('15/12/2010', 'dd/mm/yyyy'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '123'))
        );


INSERT INTO tb_Pet VALUES (
    tp_Pet(
        'Nala', 'Cachorro', 'Yorkshire', 'Cinza', 
        to_date('26/10/2018', 'dd/mm/yyyy'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'))
        );

INSERT INTO tb_Pet VALUES (
    tp_Pet(
        'Lilica', 'Cachorro', 'Lhasa apso', 'Preta', 
        to_date('17/04/2004', 'dd/mm/yyyy'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '345'))
        );

INSERT INTO tb_Pet VALUES (
    tp_Pet(
        'Lupe', 'Cachorro,', 'Yorkshire', 'Preta', 
        to_date('16/11/2011', 'dd/mm/yyyy'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '456'))
        );

INSERT INTO tb_Pet VALUES (
    tp_Pet(
        'Luna', 'Cachorro', 'Yorkshire', 'Marrom', 
        to_date('20/12/2020', 'dd/mm/yyyy'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '567'))
        );

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Atende
INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='678'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Luna'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Banho Pequeno'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        to_date('17/11/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='678'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Nala'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Tosa Higiênica'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        to_date('02/12/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='891'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Lupe'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Tosa Máquina'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '456'),
        to_date('10/12/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='891'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Tutty'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Tosa Tesoura'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '123'),
        to_date('25/11/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='891'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Lilica'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Hidratação'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '345'), 
        to_date('13/12/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='678'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Luna'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Banho Antialérgico'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '567'),
        to_date('09/12/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Atende VALUES (
    tp_Atende(
        (SELECT REF(F) FROM tb_Funcionario F WHERE F.CPF ='891'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Lupe'),
        (SELECT REF(S) FROM tb_Servico S WHERE S.Tipo_Servico = 'Banho Grande'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '456'),
        to_date('03/11/2021', 'dd/mm/yyyy'))
        );

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Consulta
INSERT INTO tb_Consulta VALUES (
    tp_Consulta(
        (SELECT REF(V) FROM tb_Veterinario V WHERE V.CPF='890'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Tutty'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '123'),
        NULL,
        to_date('16/11/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Consulta VALUES (
    tp_Consulta(
        (SELECT REF(V) FROM tb_Veterinario V WHERE V.CPF='789'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Luna'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        (SELECT REF(A) FROM tb_Produto A WHERE A.Codigo = 001),
        to_date('22/11/2021 14:00', 'dd/mm/yyyy HH24:MI'))
        );

INSERT INTO tb_Consulta VALUES (
    tp_Consulta(
        (SELECT REF(V) FROM tb_Veterinario V WHERE V.CPF='789'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Nala'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '234'),
        (SELECT REF(A) FROM tb_Produto A WHERE A.Codigo = 004),
        to_date('22/11/2021 14:30', 'dd/mm/yyyy HH24:MI'))
        );

INSERT INTO tb_Consulta VALUES (
    tp_Consulta(
        (SELECT REF(V) FROM tb_Veterinario V WHERE V.CPF='890'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Lilica'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '345'),
        NULL,
        to_date('10/12/2021', 'dd/mm/yyyy')));

INSERT INTO tb_Consulta VALUES (
    tp_Consulta(
        (SELECT REF(V) FROM tb_Veterinario V WHERE V.CPF='890'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Lupe'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '456'),
        (SELECT REF(A) FROM tb_Produto A WHERE A.Codigo = 026),
        to_date('05/12/2021', 'dd/mm/yyyy'))
        );

INSERT INTO tb_Consulta VALUES (
    tp_Consulta(
        (SELECT REF(V) FROM tb_Veterinario V WHERE V.CPF='890'),
        (SELECT REF(P) FROM tb_Pet P WHERE P.Nome = 'Luna'),
        (SELECT REF(C) FROM tb_Cliente C WHERE C.CPF = '567'),
        (SELECT REF(A) FROM tb_Produto A WHERE A.Codigo = 013),
        to_date('30/11/2021', 'dd/mm/yyyy'))
        );

-- CONSULTAS
SELECT * FROM tb_Cliente;
SELECT * FROM tb_Funcionario; --ta dando erro a visualização por ter uma REF
SELECT * FROM tb_Veterinario; --deref
SELECT * FROM tb_Servico; 
SELECT * FROM tb_Produto;
SELECT * FROM tb_Compra; --deref
SELECT * FROM tb_Pet; --deref
SELECT * FROM tb_Atende; --deref
SELECT * FROM tb_Consulta; --deref