-- TESTE DE FINAL MEMBER PROCEDURE EM PRODUTO
DECLARE
    item1 tp_Produto;
    item2 tp_Produto;
BEGIN
    SELECT VALUE(p) INTO item1 FROM tb_Produto p WHERE Codigo = '1';
    item1.exibir_detalhes();
    SELECT VALUE(o) INTO item2 FROM tb_Produto o WHERE Codigo = '2';
    item2.exibir_detalhes();
END;

/