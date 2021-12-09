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

-- CONSULTA OBJETOS EM tb_Cliente e tb_Endereco
SELECT * FROM tb_Cliente;
SELECT * FROM tb_Endereco;