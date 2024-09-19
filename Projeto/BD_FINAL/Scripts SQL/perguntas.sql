SELECT utilizador.email, utilizador.pword, tip_utilizador.tipo
FROM utilizador
INNER JOIN tip_utilizador ON utilizador.tip_util = tip_utilizador.id;



SELECT 
    bilhete.id_bilhete AS bilhete, 
    utilizador.nome AS utilizador, 
    bilhete.preco AS preço,
    paragens_chegadas.nome AS chegada, 
    paragens_partidas.nome AS partida,
    autocarros.num_autocarro AS 'número de autocarro'
FROM bilhete
INNER JOIN utilizador ON bilhete.utilizador = utilizador.id_utilizador
INNER JOIN partidas_chegadas AS chegada ON bilhete.id_chegada = chegada.id_hora
INNER JOIN paragens AS paragens_chegadas ON chegada.paragem = paragens_chegadas.id_paragem
INNER JOIN partidas_chegadas AS partida ON bilhete.id_partida = partida.id_hora
INNER JOIN paragens AS paragens_partidas ON partida.paragem = paragens_partidas.id_paragem
INNER JOIN autocarros ON chegada.autocarro = autocarros.id_autocarro;



SELECT autocarros.num_autocarro AS 'Número de autocarro', 
       partidas_chegadas.hora AS partida,
       partidas_chegadas2.hora AS chegada, 
       TIMESTAMPDIFF(MINUTE, partidas_chegadas.hora, partidas_chegadas2.hora) AS 'duração (min)',
       tip_autocarro.classe AS serviço, 
       bilhete.preco AS 'preço €'
FROM partidas_chegadas
INNER JOIN paragens ON partidas_chegadas.paragem = paragens.id_paragem
INNER JOIN autocarros ON partidas_chegadas.autocarro = autocarros.id_autocarro
INNER JOIN tip_autocarro ON autocarros.tipo_autocarro = tip_autocarro.id_tip
INNER JOIN partidas_chegadas AS partidas_chegadas2 ON partidas_chegadas2.autocarro = autocarros.id_autocarro
INNER JOIN bilhete ON partidas_chegadas.id_hora = bilhete.id_partida
WHERE paragens.id_paragem = (SELECT paragens.id_paragem FROM paragens WHERE paragens.nome = 'Coimbra' AND paragens.rota = '11' LIMIT 1)
AND partidas_chegadas2.paragem = (SELECT paragens.id_paragem FROM paragens WHERE paragens.nome = 'Santarém' LIMIT 1)


