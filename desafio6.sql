SELECT 
    format(MIN(p.valor), 2) AS faturamento_minimo,
    format(MAX(p.valor), 2) AS faturamento_maximo,
    format(AVG(p.valor), 2) AS faturamento_medio,
    format(SUM(p.valor), 2) AS faturamento_total
FROM
    SpotifyClone.planos AS p
        INNER JOIN
    SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id
;