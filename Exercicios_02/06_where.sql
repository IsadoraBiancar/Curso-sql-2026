--Lista de produtos que são chapeu
    SELECT IdProduto, DescNomeProduto
    FROM produtos
    WHERE DescNomeProduto LIKE '%chap%';
    --para pegar exceções WHERE DescNomeProduto NOTLIKE '%chap%';