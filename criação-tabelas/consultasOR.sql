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
-- TESTE DE ORDER MEMBER EM SERVICO
DECLARE
    aux NUMBER;
    servico1 tp_Servico;
    servico2 tp_Servico;
BEGIN
    SELECT VALUE (S) INTO servico1 FROM tb_Servico S WHERE tipo_servico = 'Banho pequeno';
    SELECT VALUE (S) INTO servico2 FROM tb_Servico S WHERE tipo_servico = 'Tosa tesoura';
    aux := servico1.comparaServico(servico2);

    IF aux = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Os produtos têm o mesmo preço');
    ELSIF aux = -1 THEN
        DBMS_OUTPUT.PUT_LINE('O produto ' || TO_CHAR(servico2.tipo_servico) || ' é mais caro.');
    ELSE 
         DBMS_OUTPUT.PUT_LINE('O produto ' || TO_CHAR(servico1.tipo_servico) || ' é mais caro.');
    END IF;
END;

-- TESTE MAP MEMBER FUNCTION EM PRODUTO
SELECT R.qnt_produtos() FROM tb_produto R;
    