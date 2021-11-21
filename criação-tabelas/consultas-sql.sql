
SELECT Produto.Marca From Produto;

SELECT Produto.Marca From Produto WHERE Produto.Codigo = 15;

SELECT Produto.Nome FROM Produto WHERE Produto.Preco BETWEEN 5 AND 20;

SELECT Produto.Nome FROM Produto WHERE Produto.Marca IN ('FoodPet', 'PlayPet');

SELECT Produto.Nome FROM Produto WHERE Produto.Validade LIKE '01-MAY%';

SELECT Produto.Nome FROM Produto WHERE Produto.Validade IS NULL;

SELECT MIN(Produto.Preco) As SmallestPrice FROM Produto;

SELECT MAX(Produto.Preco) As LargestPrice FROM Produto;

SELECT AVG(Produto.Preco) FROM Produto WHERE Produto.Marca IN ('FoodPet'); --selecionar a média dos preços dos produtos da marca FoodPet 

SELECT COUNT(Compra.CPF_Cliente) FROM Compra WHERE Compra.CPF_Cliente = '123'; --numero de vezes q o cliente com CPF 123 comprou