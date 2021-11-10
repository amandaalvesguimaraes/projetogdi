CREATE TABLE Pessoa (
    CPF CHAR (11) PRIMARY KEY,
    Nome VARCHAR (255) NOT NULL,
    Email VARCHAR (255),
    Data de nascimento VARCHAR (255),
    CEP CHAR (7)
    
);

CREATE TABLE Cliente (
    CPF CHAR (11) FOREIGN KEY REFERENCES Pessoa(CPF), /* só que CPF tbm é primary key de Cliente*/
    Nome VARCHAR (255) NOT NULL,
    Email VARCHAR (255),
    Data de nascimento VARCHAR (255)
);