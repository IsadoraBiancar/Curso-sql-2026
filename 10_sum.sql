SELECT  
    SUM(qtdePontos) AS TotalPontos,
    SUM(
    CASE
        WHEN qtdePontos >0 THEN qtdePontos
        END) AS PontosPositivos,
    SUM(
    CASE
        WHEN qtdePontos <0 THEN qtdePontos
        END) AS PontosNegativos,
    COUNT(CASE
        WHEN qtdePontos <0 THEN qtdePontos
        END) AS QtdePontosNegativos
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31'
