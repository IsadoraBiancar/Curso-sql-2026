-- Lista de transações realizadas no fim de semana (sábado e domingo)
SELECT IdTransacao, DtCriacao, strftime('%w', datetime(DtCriacao)) AS DiaSemana
FROM
    transacoes
WHERE
    strftime('%w', datetime(DtCriacao)) IN ('0', '6');
