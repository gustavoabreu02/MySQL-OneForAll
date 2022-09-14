SELECT
    FORMAT(MIN(ROUND(pl.plano_valor, 2)), 2) AS faturamento_minimo,
    FORMAT(MAX(ROUND(pl.plano_valor, 2)), 2) AS faturamento_maximo,
    FORMAT(AVG(ROUND(pl.plano_valor, 2)), 2) AS faturamento_medio,
    FORMAT(SUM(ROUND(pl.plano_valor, 2)), 2) AS faturamento_total
FROM
    SpotifyClone.planos AS pl
    INNER JOIN SpotifyClone.usuarios AS us ON pl.id_plano = us.id_plano;