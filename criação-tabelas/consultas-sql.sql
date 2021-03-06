/*Diminuindo a quantidade de char no Complemento do endereco*/
ALTER TABLE Endereco
MODIFY (Complemento VARCHAR2 (100));

/*Aumento do salario de um funcionario*/
UPDATE Funcionario
SET salario=6000
WHERE CPF = '678';

/*Deletando um produto que nao vai ser mais vendido*/
DELETE FROM Produto
WHERE codigo = 5;

/*Criar um indice sobre o atributo salario de Funcionario
pra agilizar a busca e ordenacao dos dados em tabelas*/
CREATE INDEX incice_sal ON
Funcionario (salario);

-- selecionar todas as marcas do produto
SELECT Produto.Marca From Produto;

-- selecionar o produto que possui código 15
SELECT Produto.Marca From Produto WHERE Produto.Codigo = 15;

-- selecionar os produtos que possuem preços entre 5 e 20
SELECT Produto.Nome FROM Produto WHERE Produto.Preco BETWEEN 5 AND 20;

-- selecionar os produtos das marcas foodpet e playpet
SELECT Produto.Nome FROM Produto WHERE Produto.Marca IN ('FoodPet', 'PlayPet');

-- selecionar os produtos que vencem no dia 01 de maio 
SELECT Produto.Nome FROM Produto WHERE Produto.Validade LIKE '01-MAY%';

-- selecionar os produtos que não possuem data de validade
SELECT Produto.Nome FROM Produto WHERE Produto.Validade IS NULL;

-- selecionar o menor preço de um produto
SELECT MIN(Produto.Preco) As SmallestPrice FROM Produto;

-- selecionar o maior preço de um produto
SELECT MAX(Produto.Preco) As LargestPrice FROM Produto;

-- média dos preços dos produtos da marca FoodPet
SELECT AVG(Produto.Preco) FROM Produto WHERE Produto.Marca IN ('FoodPet');

--número de vezes que o cliente com o CPF 123 comprou
SELECT COUNT(Compra.CPF_Cliente) FROM Compra WHERE Compra.CPF_Cliente = '123'; 

--lista o nome, o preço e a quantidade em estoque do produto que foi receitado para os pets do cliente de CPF 234 na data 22/11/2021
SELECT Produto.Nome, Produto.Preco, Produto.Estoque
FROM Produto
WHERE Produto.Codigo IN (SELECT Consulta.Cod_Produto FROM Consulta WHERE Consulta.CPF_Cliente = '234' AND Consulta.Data_Consulta = to_date('22/11/2021', 'dd/mm/yyyy'));

--quais produtos (nome) foram vendidos. Só seleciona os que estão à esquerda (em FROM), ou seja, os que foram comprados --
SELECT Produto.Codigo, Produto.Nome, Compra.Codigo_Produto FROM Compra LEFT JOIN Produto ON Produto.Codigo = Compra.Codigo_Produto;

-- ordenando os preços dos produtos do mais barato para o mais caro --
SELECT Produto.Preco, Produto.Nome FROM Produto ORDER BY Produto.Preco ASC;

-- quantos pets foram atendidos por cada veterinário --
SELECT COUNT(Consulta.Nome_Pet), Consulta.CPF_Vet FROM Consulta GROUP BY Consulta.CPF_Vet;

-- agrupando produtos e marcas, mas apenas das marcas que possuem mais de 4 produtos --
SELECT COUNT(Produto.Codigo), Produto.Marca FROM Produto GROUP BY Produto.Marca HAVING COUNT(Produto.Codigo) > 4; 

-- união CPF de cliente com CPF de funcionário --
SELECT Cliente.CPF from Cliente
UNION
SELECT Funcionario.CPF from Funcionario;

-- produtos com preço acima da média --
CREATE VIEW Produtos_Preco_Acima_Media AS
SELECT Produto.Nome, Produto.Preco
FROM Produto
WHERE Produto.Preco > (SELECT AVG(Produto.Preco) FROM Produto);

--lista os produtos com os menores preços da marca FoodPet 
SELECT * FROM Produto WHERE Produto.Preco <= ALL (SELECT Produto.Preco FROM Produto WHERE Marca IN ('FoodPet'));

--lista os funcionários que não são veterinários que tem salários maiores que pelo menos 1 veterinário
SELECT * FROM Funcionario WHERE Funcionario.Salario >= ANY (SELECT Funcionario.Salario FROM Funcionario WHERE Funcionario.CPF IN (SELECT Veterinario.CPF FROM Veterinario)) AND Funcionario.Cargo != 'Veterinário';

/*Achar o nome de um cliente a partir do seu CPF*/
SELECT Pessoa.Nome FROM Pessoa
INNER JOIN Cliente ON (Pessoa.CPF = Cliente.CPF)
WHERE Cliente.CPF = '123';

/* Selecionar uma linha a partir de um CPF */
SELECT * FROM Pessoa 
WHERE Pessoa.CPF = '890';

/* Encontrar um endereço a partir do CEP de uma Pessoa*/
SELECT * FROM Endereco
INNER JOIN Pessoa ON (Endereco.CEP = Pessoa.CEP)
WHERE Pessoa.CEP = '115';

/* testando cláusula BETWEEN e ORDER BY */
select Nome_Pet FROM Consulta
where Data_consulta BETWEEN to_date('16/11/21', 'DD/MM/YY') and to_date ('05/12/21', 'dd/mm/yy')
ORDER BY Nome_Pet;

/*Garantir todos os privilegios (inserir, atualizar, deletar, selecionar) da tabela Pessoa 
para acesso de todos os usuarios, em seguida removendo o privilegio de deletar e atualizar na mesma tabela
para todos os usuarios*/
GRANT ALL PRIVILEGES ON Pessoa TO PUBLIC;
REVOKE DELETE, UPDATE ON Pessoa TO PUBLIC;
