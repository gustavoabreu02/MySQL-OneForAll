SELECT
    ca.nome_cancao AS 'nome',
    COUNT(re.id_usuario) AS 'reproducoes'
FROM
    SpotifyClone.cancoes AS ca
    INNER JOIN SpotifyClone.reproducao AS re ON ca.id_cancao = re.id_cancao
    INNER JOIN SpotifyClone.usuarios AS us ON re.id_usuario = us.id_usuario
    INNER JOIN SpotifyClone.planos AS pl ON us.id_plano = pl.id_plano
WHERE
    pl.plano_nome IN('gratuito', 'pessoal')
GROUP BY
    nome
ORDER BY
    nome;