/*povoamento de pessoa apenas para eu poder povoar funcionario(só modificar depois mantendo os cpfs))*/
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('123', 'Alice', 'alice@email.com', to_date('13/03/2000', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('234', 'Rafaela', 'rafaela@email.com', to_date('15/06/2000', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('345', 'Henrique', 'henrique@email.com', to_date('13/08/2000', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('456', 'Caio', 'caio@email.com', to_date('10/03/1995', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('567', 'Guilherme', 'guilherme@email.com', to_date('15/05/1998', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('678', 'Joao', 'joao@email.com', to_date('15/09/1998', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('789', 'Giovanna', 'giovanna@email.com', to_date('15/12/1998', 'dd/mm/yy') );
INSERT INTO Pessoa (cpf, nome, email, data_de_nascimento) VALUES ('890', 'Emilia', 'emilia@email.com', to_date('15/10/1998', 'dd/mm/yy') );



/*povoamento de funcionario */
INSERT INTO Funcionario(cpf, matricula, data_de_admissao, cargo, salario) VALUES ('123', '100',to_date('05/07/2021', 'dd/mm/yy'),'Supervisor', 2000.00);
INSERT INTO Funcionario(cpf, matricula, data_de_admissao, cargo, salario, cpf_supervisor) VALUES ('234', '101',to_date('05/08/2020', 'dd/mm/yy'),'Atendente', 1200.00, '123');
INSERT INTO Funcionario(cpf, matricula, data_de_admissao, cargo, salario, cpf_supervisor) VALUES ('345', '102',to_date('05/10/2020', 'dd/mm/yy'),'Atendente', 1200.00, '123');
INSERT INTO Funcionario(cpf, matricula, data_de_admissao, cargo, salario) VALUES ('456', '103',to_date('15/07/2021', 'dd/mm/yy'),'Supervisor', 2000.00);
INSERT INTO Funcionario(cpf, matricula, data_de_admissao, cargo, salario, cpf_supervisor) VALUES ('567', '104',to_date('25/07/2021', 'dd/mm/yy'),'Atendente', 1200.00, '456');

/*povoamento de veterinário */
INSERT INTO Veterinario(cpf, numero_crmv) VALUES ('678', '0004');
INSERT INTO Veterinario(cpf, numero_crmv) VALUES ('789', '0005');
INSERT INTO Veterinario(cpf, numero_crmv) VALUES ('890', '0006');



INSERT INTO Cliente (
    CPF,
    Nome, 
    Email,
    Data_Nascimento
) 
    VALUES 
    (
        '123',
        'Amanda',
        'amanda@email.com',
        '2001-03-01'

    ),
    (
        '234',
        'Thaís',
        'thais@email.com',
        '2001-07-16'

    ),
    (
        '345',
        'Isabela',
        'isabela@email.com',
        '1999-08-26'
        
    ),
    (
        '456',
        'Lorena',
        'carla@email.com',
        '2000-07-28'

    ),
    (
        '567',
        'Daniel',
        'daniel@email.com',
        '2000-10-12'
        
    );



/*povoamento de produto*/
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('000', 15, '1110', 20, to_date('11/05/2021', 'dd/mm/yyyy'), to_date('01/05/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Shampoo');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('001', 15, '1111', 20, to_date('11/05/2021', 'dd/mm/yyyy'), to_date('01/05/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Condicionador');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('002', 15, '1112', 16, to_date('11/05/2021', 'dd/mm/yyyy'), to_date('01/05/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Perfume');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('003', 80, '1113', 7, to_date('01/07/2021', 'dd/mm/yyyy'), to_date('01/10/2022', 'dd/mm/yyyy'), 'SaúdePet', 'Carrapaticida');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('004', 80, '1114', 9, to_date('02/08/2021', 'dd/mm/yyyy'), to_date('01/12/2022', 'dd/mm/yyyy'), 'SaúdePet', 'Vermífugo');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('005', 10, '1115', 31, NULL, NULL, 'LimpaPet', 'Escova de pelo');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('006', 10, '1116', 30, NULL, NULL, 'DentesPet', 'Escova de dentes');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('007', 10, '1117', 25, to_date('06/04/2021', 'dd/mm/yyyy'), to_date('01/04/2022', 'dd/mm/yyyy'), 'DentesPet', 'Creme dental');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('008', 35, '1118', 12, to_date('23/09/2021', 'dd/mm/yyyy'), to_date('01/10/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Tapete higiênico');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('009', 12, '1119', 25, NULL, NULL, 'LimpaPet', 'Areia sanitária');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('010', 70, '1120', 4, NULL, NULL, 'TranspoPet', 'Caixa de transporte');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('011', 50, '1121', 18, to_date('25/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para cães idosos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('012', 40, '1122', 16, to_date('25/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para cães adultos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('013', 40, '1123', 22, to_date('25/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para cães filhotes');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('014', 50, '1124', 10, to_date('14/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para gatos idosos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('015', 40, '1125', 17, to_date('14/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para gatos adultos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('016', 40, '1126', 23, to_date('14/10/2021', 'dd/mm/yyyy'), to_date('01/03/2022', 'dd/mm/yyyy'), 'FoodPet', 'Ração para gatos filhotes');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('017', 7, '1127', 51, to_date('01/08/2021', 'dd/mm/yyyy'), to_date('01/01/2022', 'dd/mm/yyyy'), 'FoodPet', 'Sachê para cães');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('018', 7, '1128', 46, to_date('01/08/2021', 'dd/mm/yyyy'), to_date('01/01/2022', 'dd/mm/yyyy'), 'FoodPet', 'Sachê para gatos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('019', 20, '1129', 8, NULL, NULL, 'PlayPet', 'Brinquedo para cães');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('020', 20, '1130', 11, NULL, NULL, 'PlayPet', 'Brinquedo para gatos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('021', 5, '1131', 14, to_date('17/09/2021', 'dd/mm/yyyy'), to_date('01/06/2022', 'dd/mm/yyyy'), 'FoodPet', 'Petisco para cães');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('022', 5, '1132', 16, to_date('17/09/2021', 'dd/mm/yyyy'), to_date('01/06/2022', 'dd/mm/yyyy'), 'FoodPet', 'Petisco para gatos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('023', 40, '1133', 14, NULL, NULL, 'ConfortPet', 'Cama para cães');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('024', 40, '1134', 8, NULL, NULL, 'ConfortPet', 'Cama para gatos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('025', 70, '1135', 0, NULL, NULL, 'PlayPet', 'Arranhador para gatos');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('026', 30, '1136', 15, to_date('10/06/2021', 'dd/mm/yyyy'), to_date('01/02/2022', 'dd/mm/yyyy'), 'LimpaPet', 'Desinfetante');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('027', 25, '1137', 24, NULL, NULL, 'TranspoPet', 'Coleira');
INSERT INTO Produto(Codigo, Preco, Lote, Estoque, Fabricacao, Validade, Marca, Nome) VALUES ('028', 15, '1138', 13, NULL, NULL, 'FoodPet', 'Recipiente para comida');

/*povoamento compra*/
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('123', '001', to_date('01/10/2021', 'dd/mm/yyyy'), '13:20');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('123', '010', to_date('02/10/2021', 'dd/mm/yyyy'), '10:00');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('123', '020', to_date('05/11/2021', 'dd/mm/yyyy'), '11:40');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('234', '012', to_date('15/10/2021', 'dd/mm/yyyy'), '18:00');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('234', '009', to_date('07/11/2021', 'dd/mm/yyyy'), '15:14');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('234', '017', to_date('09/10/2021', 'dd/mm/yyyy'), '10:06');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('345', '015', to_date('20/10/2021', 'dd/mm/yyyy'), '16:10');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('345', '002', to_date('31/10/2021', 'dd/mm/yyyy'), '09:00');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('345', '004', to_date('08/11/2021', 'dd/mm/yyyy'), '15:55');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('456', '010', to_date('28/10/2021', 'dd/mm/yyyy'), '14:25');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('456', '019', to_date('02/10/2021', 'dd/mm/yyyy'), '17:00');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('456', '006', to_date('13/11/2021', 'dd/mm/yyyy'), '12:30');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('567', '004', to_date('01/11/2021', 'dd/mm/yyyy'), '13:10');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('567', '022', to_date('24/10/2021', 'dd/mm/yyyy'), '08:50');
INSERT INTO Compra(CPF_Cliente, Codigo_Produto, Data_Compra, Hora_Compra) VALUES ('567', '014', to_date('25/10/2021', 'dd/mm/yyyy'), '09:48');











