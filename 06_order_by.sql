SELECT *
From clientes
WHERE flTwitch = 1
ORDER BY DtCriacao , QtdePontos DESC
LIMIT 10