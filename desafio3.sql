SELECT
    us.nome_usuario AS 'usuario',
    COUNT(rep.id_cancao) as 'qt_de_musicas_ouvidas',
    ROUND(SUM(ca.duracao_segundos / 60), 2) AS 'total_minutos'
FROM
    SpotifyClone.reproducao as rep
    INNER JOIN SpotifyClone.usuarios as us ON us.id_usuario = rep.id_usuario
    INNER JOIN SpotifyClone.cancoes as ca ON ca.id_cancao = rep.id_cancao
GROUP BY
    us.nome_usuario
ORDER BY
    us.nome_usuario ASC;