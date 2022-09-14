SELECT
    us.nome_usuario AS usuario,
    IF (
        YEAR(MAX(re.reproducao_data)) >= 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) AS status_usuario
FROM
    SpotifyClone.usuarios AS us
    INNER JOIN SpotifyClone.reproducao AS re ON re.id_usuario = us.id_usuario
GROUP BY
    us.nome_usuario
ORDER BY
    us.nome_usuario ASC;