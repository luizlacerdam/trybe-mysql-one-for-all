SELECT 
    count(musica_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico
WHERE
    usuario_id = 1;