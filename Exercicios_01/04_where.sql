--Selecione produtos que contém churn no nome
SELECT IdProduto, DescNomeProduto
FROM produtos
WHERE DescNomeProduto LIKE '%churn%';

-- WHERE DescNomeProduto IN ('Churn_10pp','Churn_2pp')
-- WHERE DescNomeProduto = 'Churn_10pp' OR DescNomeProduto 'Churn_2pp'