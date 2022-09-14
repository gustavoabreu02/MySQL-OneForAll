SELECT
    ar.nome_artista AS artista,
    al.nome_album AS album,
    COUNT(as.id_artista) AS seguidores
FROM
    SpotifyClone.artistas ar
    INNER JOIN SpotifyClone.artistas_seguindo `as` ON ar.id_artista = as.id_artista
    INNER JOIN SpotifyClone.albuns al ON ar.id_artista = al.id_artista
GROUP BY
    ar.nome_artista,
    al.nome_album
ORDER BY
    seguidores DESC,
    ar.nome_artista ASC,
    al.nome_album ASC;