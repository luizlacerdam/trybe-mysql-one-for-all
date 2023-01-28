SELECT 
    m.musica AS cancao,
    sum(h.musica_id) AS reproducoes
    FROM
    SpotifyClone.musicas AS m
        INNER JOIN
    SpotifyClone.historico AS h ON m.musica_id = h.musica_id
GROUP BY m.musica
ORDER BY sum(h.musica_id) desc limit 2;