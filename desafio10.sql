SELECT 
    m.musica AS nome, COUNT(h.usuario_id) AS reproducoes
FROM
    SpotifyClone.musicas AS m
        INNER JOIN
    SpotifyClone.historico AS h ON m.musica_id = h.musica_id
        INNER JOIN
    SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
        INNER JOIN
    SpotifyClone.planos AS p ON p.plano_id = u.plano_id
WHERE
    p.plano = 'gratuito'
        OR p.plano = 'pessoal'
GROUP BY m.musica
ORDER BY m.musica;
    