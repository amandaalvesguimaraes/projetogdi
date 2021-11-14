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
