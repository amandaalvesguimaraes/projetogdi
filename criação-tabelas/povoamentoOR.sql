CREATE SEQUENCE seq INCREMENT by 1 START WITH 1;


-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Cliente
INSERT INTO tb_Cliente VALUES (tp_Cliente('123', 'Amanda', 'amanda@email.com', to_date('01/03/2001', 'dd/mm/yy'), tp_Endereco('111', 1, 'Recife', 'Rua Jornalista Guerra de Holanda', 'Casa Forte','')));
INSERT INTO tb_Cliente VALUES (tp_Cliente('234', 'Thaís', 'thais@email.com', to_date('16/07/2001', 'dd/mm/yy'), tp_Endereco('112', 2, 'Caruaru', 'Avenida Leão Dourado', 'Kennedy','Apartamento 601')));
INSERT INTO tb_Cliente VALUES (tp_Cliente('345', 'Isabela', 'isabela@email.com', to_date('26/08/1999', 'dd/mm/yy'), tp_Endereco('113', 3, 'Recife', 'Avenida 17 de Agosto', 'Casa Forte','')));
INSERT INTO tb_Cliente VALUES (tp_Cliente('456', 'Lorena', 'lorena@email.com', to_date('28/07/2000', 'dd/mm/yy'), tp_Endereco('114', 4, 'Caruaru', 'Avenida Agamenon Magalhães', 'Mauricio de Nassau','')));
INSERT INTO tb_Cliente VALUES (tp_Cliente('567', 'Daniel', 'daniel@email.com', to_date('13/10/1998', 'dd/mm/yy'), tp_Endereco('115', 5, 'Recife', 'Rua General Polidoro', 'Várzea','')));

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
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('678', 'Alice', 'alice@email.com', to_date('13/03/2000', 'dd/mm/yy'), tp_Endereco('116', 6, 'Recife', 'Rua Jornalista Aníbal Fernandes', 'Cidade Universitaria',''), '101', 1200.00, 'Supervisor', to_date('05/08/2020', 'dd/mm/yy'), '678'));
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('789', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy'), tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis',''), '102', 1200.00, 'Veterinário', to_date('05/10/2020', 'dd/mm/yy'), '678'));
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('890', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy'), tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201'), '103', 2000.00, 'Veterinário', to_date('15/07/2021', 'dd/mm/yy'), '678'));
INSERT INTO tb_Funcionario VALUES (tp_Funcionario('891', 'Caio', 'caio@email.com', to_date('10/03/1995', 'dd/mm/yy'), tp_Endereco('119', 9, 'Recife', 'Rua da Hora', 'Espinheiro',''), '104', 1200.00, 'Atendente', to_date('25/07/2021', 'dd/mm/yy'), '678'));

-- INSERÇÃO DE OBJETOS EM TABELA DE OBJETOS tb_Veterinario
INSERT INTO tb_Veterinario VALUES (tp_Veterinario('789', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy'), tp_Endereco('117', 7, 'Caruaru', 'Rua Bahia', 'Divinopolis',''), '102', 1200.00, 'Veterinário', to_date('05/10/2020', 'dd/mm/yy'), '678', '0005'));
INSERT INTO tb_Veterinario VALUES (tp_Veterinario('890', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy'), tp_Endereco('118', 8, 'Recife', 'Rua Marechal Manoel Luis Osorio', 'Varzea', 'Apartamento 201'), '103', 2000.00, 'Veterinário', to_date('15/07/2021', 'dd/mm/yy'), '678', '0006'));

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
INSERT INTO tb_Servico VALUES (tp_Servico('Banho pequeno', 30));
INSERT INTO tb_Servico VALUES (tp_Servico('Banho medio', '40'));
INSERT INTO tb_Servico VALUES (tp_Servico('Banho grande', '50'));
INSERT INTO tb_Servico VALUES (tp_Servico('Hidratação', '37'));
INSERT INTO tb_Servico VALUES (tp_Servico('Tosa Higihênica', '25'));
INSERT INTO tb_Servico VALUES (tp_Servico('Tosa Máquina', '35'));
INSERT INTO tb_Servico VALUES (tp_Servico('Tosa tesoura', '50'));
INSERT INTO tb_Servico VALUES (tp_Servico('Pacote completo', '100'));
INSERT INTO tb_Servico VALUES (tp_Servico('Banho antialérgico', '55'));

-- CONSULTAS
SELECT * FROM tb_Cliente;
SELECT * FROM tb_Endereco;
SELECT * FROM tb_Funcionario;
SELECT * FROM tb_Veterinario;
SELECT * FROM tb_Servico;
SELECT * FROM tb_Produto;
SELECT * FROM tb_Telefone;
SELECT * FROM tb_Compra;