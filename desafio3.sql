SELECT 
    u.usuario AS usuario,
    COUNT(h.musica_id) AS qt_de_musicas_ouvidas,
    round(SUM(m.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS u
        INNER JOIN
    SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
GROUP BY u.usuario
ORDER BY u.usuario;