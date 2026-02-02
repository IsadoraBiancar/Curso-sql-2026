--Criando colunas e alterando nomes
SELECT idCliente,
    qtdePontos,
    qtdePontos+10 AS QtdPontosPlus10,
    qtdePontos*2 AS QtddepontosDouble,
 --selecionando dados utilizando string e transformando em data
    DtCriacao,
    substr(DtCriacao, 1, 19) AS dtSubstr,
    datetime (substr(DtCriacao, 1, 19)) AS DataApenas,
-- extraindo o dia da semana utilizando funções
    strftime('%w',datetime (substr(DtCriacao, 1, 19))) AS DiaSemana
FROM    clientes
