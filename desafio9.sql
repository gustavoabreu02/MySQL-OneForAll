SELECT
    COUNT(us.nome_usuario) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.usuarios us
    INNER JOIN SpotifyClone.reproducao re ON us.id_usuario = re.id_usuario
WHERE
    us.nome_usuario = 'Barbara Liskov';