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


-- CONSULTAS
SELECT * FROM tb_Cliente;
SELECT * FROM tb_Endereco;
SELECT * FROM tb_Funcionario;
SELECT * FROM tb_Veterinario;
SELECT * FROM tb_Servico;
SELECT * FROM tb_Produto;
SELECT * FROM tb_Telefone;