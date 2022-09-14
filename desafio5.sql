SELECT
    ca.nome_cancao AS cancao,
    COUNT(re.id_cancao) AS reproducoes
FROM
    SpotifyClone.cancoes AS ca
    INNER JOIN SpotifyClone.reproducao AS re ON ca.id_cancao = re.id_cancao
GROUP BY
    ca.nome_cancao
ORDER BY
    reproducoes DESC,
    ca.nome_cancao
LIMIT
    2;