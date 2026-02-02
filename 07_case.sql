-- Intervalos
-- de 0 a 500
-- de 501 a 1000
-- de 1001 a 5000
-- de 5001 a 10000
-- acima de 10001

SELECT idCliente,
qtdePontos,
    CASE
        WHEN qtdePontos BETWEEN 0 AND 500 THEN 'ponei'
        WHEN qtdePontos BETWEEN 501 AND 1000 THEN 'ponei premium'
        WHEN qtdePontos BETWEEN 1001 AND 5000 THEN 'mago aprendiz'
        WHEN qtdePontos BETWEEN 5001 AND 10000 THEN 'mago mestre'
        ELSE 'mago supremo' 
    END AS NivelCliente,

    CASE
        WHEN qtdePontos > 10000 THEN 'VIP'
        ELSE 'Comum'
    END AS TipoCliente,
    
    CASE
        WHEN qtdePontos <1000 THEN 'Iniciante'
        WHEN qtdePontos BETWEEN 1000 AND 5000 THEN 'Intermediario'
        WHEN qtdePontos BETWEEN 5001 AND 10000 THEN 'Avançado'
        ELSE 'Expert'   
    END AS CategoriaCliente

FROM clientes
WHERE flTwitch = 1
ORDER BY qtdePontos DESC