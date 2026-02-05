--SELECT IdProduto,
--    COUNT(*) AS QtdeVendas
--    FROM transacao_produto
--    group by IdProduto


SELECT IdCliente,
    SUM(QtdePontos) AS TotalGasto
FROM transacoes

WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31' 

GROUP BY IdCliente

ORDER BY TotalGasto DESC;
