SELECT 
    round(avg(qtdePontos),2) AS MediaPontos,
    1. *sum(qtdePontos) / count(idCliente),
    min(qtdePontos) AS MinCarteira,
    max(qtdePontos) AS MaxCarteira,
    sum(flTwitch) AS TotalTwitchers
FROM clientes