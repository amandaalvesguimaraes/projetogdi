CREATE SEQUENCE seq INCREMENT by 1 START WITH 1;
/

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Cliente
INSERT INTO tb_Cliente VALUES (tp_Cliente('123', 'Amanda', 'amanda@email.com', to_date('01/03/2001', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('111', 1, 'Recife', 'Rua Jornalista Guerra de Holanda', 'Casa Forte',''))));
INSERT INTO tb_Cliente VALUES (tp_Cliente('234', 'Thaís', 'thais@email.com', to_date('16/07/2001', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('112', 2, 'Caruaru', 'Avenida Leão Dourado', 'Kennedy','Apartamento 601'))));
INSERT INTO tb_Cliente VALUES (tp_Cliente('345', 'Isabela', 'isabela@email.com', to_date('26/08/1999', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('113', 3, 'Recife', 'Avenida 17 de Agosto', 'Casa Forte',''))));
INSERT INTO tb_Cliente VALUES (tp_Cliente('456', 'Lorena', 'lorena@email.com', to_date('28/07/2000', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('114', 4, 'Caruaru', 'Avenida Agamenon Magalhães', 'Mauricio de Nassau',''))));
INSERT INTO tb_Cliente VALUES (tp_Cliente('567', 'Daniel', 'daniel@email.com', to_date('13/10/1998', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('115', 5, 'Recife', 'Rua General Polidoro', 'Várzea',''))));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Endereco
INSERT INTO tb_Endereco VALUES (tp_Endereco('111', 1, 'Recife', 'Rua Jornalista Guerra de Holanda', 'Casa Forte',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('112', 2, 'Caruaru', 'Avenida Leão Dourado', 'Kennedy','Apartamento 601'));
INSERT INTO tb_Endereco VALUES (tp_Endereco('113', 3, 'Recife', 'Avenida 17 de Agosto', 'Casa Forte',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('114', 4, 'Caruaru', 'Avenida Agamenon Magalhães', 'Mauricio de Nassau',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('115', 5, 'Recife', 'Rua General Polidoro', 'Várzea',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('116', 6, 'Recife', 'Rua Jornalista Aníbal Fernandes', 'Cidade Universitaria',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201'));
INSERT INTO tb_Endereco VALUES (tp_Endereco('119', 9, 'Recife', 'Rua da Hora', 'Espinheiro',''));
INSERT INTO tb_Endereco VALUES (tp_Endereco('110', 10, 'Recife', 'Rua da Hora', 'Espinheiro', 'Apartamento 302'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Funcionario
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('678', 'Alice', 'alice@email.com', to_date('13/03/2000', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('116', 6, 'Recife', 'Rua Jornalista Aníbal Fernandes', 'Cidade Universitaria','')), '101', 1200.00, 'Supervisor', to_date('05/08/2020', 'dd/mm/yy'), (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678')));
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('789', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis','')), '102', 1200.00, 'Veterinário', to_date('05/10/2020', 'dd/mm/yy'), (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678')));
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('890', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201')), '103', 2000.00, 'Veterinário', to_date('15/07/2021', 'dd/mm/yy'), (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678')));
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('891', 'Caio', 'caio@email.com', to_date('10/03/1995', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('119', 9, 'Recife', 'Rua da Hora', 'Espinheiro','')), '104', 1200.00, 'Atendente', to_date('25/07/2021', 'dd/mm/yy'), (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678')));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Veterinario
INSERT INTO tb_Veterinario VALUES (tp_Veterinario('789', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis','')), '102', 1200.00, 'Veterinário', to_date('05/10/2020', 'dd/mm/yy'), (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'), '0005'));
INSERT INTO tb_Veterinario VALUES (tp_Veterinario('890', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy'), tp_lista_endereco(tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201')), '103', 2000.00, 'Veterinário', to_date('15/07/2021', 'dd/mm/yy'), (SELECT REF(P) FROM tb_funcionario P WHERE P.CPF ='678'), '0006'));

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
INSERT INTO tb_Compra VALUES (tp_Compra('123', 001, to_date('01/10/2021', 'dd/mm/yyyy'), '13:20'));
INSERT INTO tb_Compra VALUES (tp_Compra('123', 010, to_date('02/10/2021', 'dd/mm/yyyy'), '10:00'));
INSERT INTO tb_Compra VALUES (tp_Compra('123', 020, to_date('05/11/2021', 'dd/mm/yyyy'), '11:40'));
INSERT INTO tb_Compra VALUES (tp_Compra('234', 012, to_date('15/10/2021', 'dd/mm/yyyy'), '18:00'));
INSERT INTO tb_Compra VALUES (tp_Compra('234', 009, to_date('07/11/2021', 'dd/mm/yyyy'), '15:14'));
INSERT INTO tb_Compra VALUES (tp_Compra('234', 017, to_date('09/10/2021', 'dd/mm/yyyy'), '10:06'));
INSERT INTO tb_Compra VALUES (tp_Compra('345', 015, to_date('20/10/2021', 'dd/mm/yyyy'), '16:10'));
INSERT INTO tb_Compra VALUES (tp_Compra('345', 002, to_date('31/10/2021', 'dd/mm/yyyy'), '09:00'));
INSERT INTO tb_Compra VALUES (tp_Compra('345', 004, to_date('08/11/2021', 'dd/mm/yyyy'), '15:55'));
INSERT INTO tb_Compra VALUES (tp_Compra('456', 010, to_date('28/10/2021', 'dd/mm/yyyy'), '14:25'));
INSERT INTO tb_Compra VALUES (tp_Compra('456', 019, to_date('02/10/2021', 'dd/mm/yyyy'), '17:00'));
INSERT INTO tb_Compra VALUES (tp_Compra('456', 006, to_date('13/11/2021', 'dd/mm/yyyy'), '12:30'));
INSERT INTO tb_Compra VALUES (tp_Compra('567', 004, to_date('01/11/2021', 'dd/mm/yyyy'), '13:10'));
INSERT INTO tb_Compra VALUES (tp_Compra('567', 022, to_date('24/10/2021', 'dd/mm/yyyy'), '08:50'));
INSERT INTO tb_Compra VALUES (tp_Compra('567', 014, to_date('25/10/2021', 'dd/mm/yyyy'), '09:48'));

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

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Telefone
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('985678455'), tp_NumTelefone('345798001')), '123'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('984563725'), tp_NumTelefone('375322784')), '234'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('998445609'), tp_NumTelefone('332243759')), '345'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('997874739'), tp_NumTelefone('997579739')), '456'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('981450988'), tp_NumTelefone('987005643')), '567'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('985664321'), tp_NumTelefone('307441139')), '678'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('980923455'), tp_NumTelefone('335698760')), '789'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('990998765'), tp_NumTelefone('991223245')), '890'));
INSERT INTO tb_Telefone VALUES (tp_Telefone(tp_ListaNumeros(tp_NumTelefone('992745566'), tp_NumTelefone('987653033')), '891'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Pet
INSERT INTO tb_Pet VALUES (tp_Pet('123', 'Tutty', 'Cachorro', 'Cocker Spaniel', 'Branca', to_date('15/12/2010', 'dd/mm/yyyy')));
INSERT INTO tb_Pet VALUES (tp_Pet('234', 'Luna', 'Cachorro', 'Yorkshire', 'Marrom', to_date('20/10/2016', 'dd/mm/yyyy')));
INSERT INTO tb_Pet VALUES (tp_Pet('234', 'Nala', 'Cachorro', 'Yorkshire', 'Cinza', to_date('26/10/2018', 'dd/mm/yyyy')));
INSERT INTO tb_Pet VALUES (tp_Pet('345', 'Lilica', 'Cachorro', 'Lhasa apso', 'Preta', to_date('17/04/2004', 'dd/mm/yyyy')));
INSERT INTO tb_Pet VALUES (tp_Pet('456', 'Lupe', 'Cachorro,', 'Yorkshire', 'Preta', to_date('16/11/2011', 'dd/mm/yyyy')));
INSERT INTO tb_Pet VALUES (tp_Pet('567', 'Luna', 'Cachorro', 'Yorkshire', 'Marrom', to_date('20/12/2020', 'dd/mm/yyyy')));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Atende
INSERT INTO tb_Atende VALUES (tp_Atende('678', 'Luna', 'Banho Pequeno', '234', to_date('17/11/2021', 'dd/mm/yyyy'), '14:20'));
INSERT INTO tb_Atende VALUES (tp_Atende('678', 'Nala', 'Tosa Higiênica', '234', to_date('02/12/2021', 'dd/mm/yyyy'), '15:02'));
INSERT INTO tb_Atende VALUES (tp_Atende('891', 'Lupe', 'Tosa Máquina', '456', to_date('10/12/2021', 'dd/mm/yyyy'), '09:30'));
INSERT INTO tb_Atende VALUES (tp_Atende('891', 'Tutty', 'Tosa Tesoura', '123', to_date('25/11/2021', 'dd/mm/yyyy'), '17:00'));
INSERT INTO tb_Atende VALUES (tp_Atende('891', 'Lilica', 'Hidratação', '345', to_date('13/12/2021', 'dd/mm/yyyy'), '12:45'));
INSERT INTO tb_Atende VALUES (tp_Atende('678', 'Luna', 'Banho Antialérgico', '567', to_date('09/12/2021', 'dd/mm/yyyy'), '10:10'));
INSERT INTO tb_Atende VALUES (tp_Atende('891', 'Lupe', 'Banho Grande', '456', to_date('03/11/2021', 'dd/mm/yyyy'), '11:30'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Consulta
INSERT INTO tb_Consulta VALUES (tp_Consulta('890', 'Tutty', '123', to_date('16/11/2021', 'dd/mm/yyyy'), '10:00', NULL));
INSERT INTO tb_Consulta VALUES (tp_Consulta('789', 'Luna', '234', to_date('22/11/2021', 'dd/mm/yyyy'), '14:00', 003));
INSERT INTO tb_Consulta VALUES (tp_Consulta('789', 'Nala', '234', to_date('22/11/2021', 'dd/mm/yyyy'), '14:30', 004));
INSERT INTO tb_Consulta VALUES (tp_Consulta('890', 'Lilica', '345', to_date('10/12/2021', 'dd/mm/yyyy'), '11:00', NULL));
INSERT INTO tb_Consulta VALUES (tp_Consulta('890', 'Lupe', '456', to_date('05/12/2021', 'dd/mm/yyyy'), '09:15', 026));
INSERT INTO tb_Consulta VALUES (tp_Consulta('890', 'Luna', '567', to_date('30/11/2021', 'dd/mm/yyyy'), '17:00', 013));

-- CONSULTAS
SELECT * FROM tb_Cliente C, TABLE(C.Endereco);
SELECT * FROM tb_Endereco;
SELECT * FROM tb_Funcionario F, TABLE(F.Endereco); --ta dando erro a visualização por ter uma REF
SELECT * FROM tb_Veterinario V, TABLE(V.Endereco); --ta dando erro a visualização por ter uma REF
SELECT * FROM tb_Servico;
SELECT * FROM tb_Produto;
SELECT * FROM tb_Telefone T, TABLE(T.Num_telefone);
SELECT * FROM tb_Compra;
SELECT * FROM tb_Pet;
SELECT * FROM tb_Atende;
SELECT * FROM tb_Consulta;