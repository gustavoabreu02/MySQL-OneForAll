SELECT
    COUNT(ca.nome_cancao) AS cancoes,
    COUNT(DISTINCT nome_artista) AS artistas,
    COUNT(DISTINCT nome_album) AS albuns
FROM
    SpotifyClone.cancoes AS ca
    INNER JOIN SpotifyClone.albuns AS al ON ca.id_album = al.id_album
    INNER JOIN SpotifyClone.artistas AS ar ON al.id_artista = ar.id_artista;