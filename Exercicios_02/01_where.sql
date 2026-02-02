-- Lista de transações com apenas 1 ponto
SELECT Idtransacao, qtdePontos
FROM
    transacoes
WHERE
    qtdePontos = 1;

