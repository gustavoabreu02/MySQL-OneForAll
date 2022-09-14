SELECT
    ar.nome_artista AS artista,
    al.nome_album AS album
FROM
    SpotifyClone.artistas ar
    INNER JOIN SpotifyClone.albuns al ON ar.id_artista = al.id_artista
WHERE
    nome_artista = 'Elis Regina'
ORDER BY
    album;